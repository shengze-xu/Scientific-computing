x0=-1:0.2:1;
y0=exp(x0.^2);
x2=-2:0.04:2;
estimate2=lagrange(x0,y0,x2);
real2=exp(x2.^2);
wucha2=estimate2-real2;
plot(x2,wucha2,'b');
