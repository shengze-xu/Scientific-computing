x0=-1:0.2:1;
y0=exp(x0.^2);
x=[-0.56 0.15 0.98];
real=exp(x.^2);
ans=lagrange(x0,y0,x);
disp(ans);
disp(ans-real);