function [x1,x2] = quadratic3(a,b,c)
% It takes 3 input arguments
d = disc(a,b,c); 
x1 = (-b + d) / (2*a);
x2 = (-b - d) / (2*a);
end % end of quadratic3