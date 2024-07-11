format long e;
syms x;
f=inline("x-2^(-x)","x");
g=inline("exp(x)-x^2+3*x-2","x");
xc1=bisection(f,0,1,10^(-10));
xc2=bisection(g,0,1,10^(-10));
fprintf('解为%.10f\n',xc1);
fprintf('解为%.10f\n',xc2);