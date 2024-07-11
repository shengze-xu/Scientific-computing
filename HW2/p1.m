X=-1:0.2:1;
Y=exp(X.^2);
x=[-0.56 0.15 0.98];
truevalue=exp(x.^2);
caculatedvalue=lagrange(x,X,Y);
disp(caculatedvalue);
