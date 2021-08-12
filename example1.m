function sol=example1(a,e,l)
    function f=fun1(beta)
        f=a.*(1-e.^2)./(1-e.^2*sin(beta).^2).^(3/2);
    end
    function g=fun2(beta0)
        g=quadl(@fun1,0,beta0)-l;
    end
sol=fzero(@fun2,3);
end