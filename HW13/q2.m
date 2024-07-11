format long e;
syms x;
f=inline("x-exp(-x)","x");
xc1=bisection(f,0,1,eps);
fprintf('解为%.10f\n',xc1);