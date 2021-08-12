function [x1,x2] = quadratic(a,b,c)
% It takes 3 input arguments
d = disc(a,b,c); 
x1 = (-b + d) / (2*a);
x2 = (-b - d) / (2*a);
end % end of quadratic

function dis = disc(a,b,c) 
%function calculates the discriminant
dis = sqrt(b^2 - 4*a*c);
end % end of sub-function