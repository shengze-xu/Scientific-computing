x0=-1:0.2:1;
y0=exp(x0.^2);
x1=-1:0.02:1;
estimate1=lagrange(x0,y0,x1);
real1=exp(x1.^2);
wucha1=estimate1-real1;
subplot(1,2,1)
plot(x1,wucha1,'r');
x2=-2:0.04:2;
estimate2=lagrange(x0,y0,x2);
real2=exp(x2.^2);
wucha2=estimate2-real2;
subplot(1,2,2)
plot(x2,wucha2,'b');


