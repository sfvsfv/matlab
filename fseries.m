function [A,B,F]=fseries(f,x,n,a,b)
%用于求解函数的傅里叶级数展开
    if nargin==3, a=-pi; b=pi; end
    L=(b-a)/2; 
    if a+b, f=subs(f,x,x-L-a); end %变量区域互换
    A=int(f,x,-L,L)/L; B=[]; F=A/2; %计算a0
    for i=1:n
        an=int(f*cos(i*pi*x/L),x,-L,L)/L; 
        bn=int(f*sin(i*pi*x/L),x,-L,L)/L; 
        A=[A, an]; 
        B=[B, bn]; 
        F=F+an*cos(i*pi*x/L)+bn*sin(i*pi*x/L);
    end
    if a+b, F=subs(F,x,x+L+a); end %换回变量区域
end