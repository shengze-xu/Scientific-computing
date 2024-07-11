format long e
x=[];
y=[];
for n=1:8
    x(n)=n;
    y(n)=log(abs(cond(n)));
end
%y=P+Qx;
xy=[];
x2=[];
for n=1:8
    xy(n)=x(n)*y(n);
    x2(n)=x(n)*x(n);
end
Q=(sum(xy(1:8))-1/8*sum(x(1:8))*sum(y(1:8)))/(sum(x2(1:8))-1/8*(sum(x(1:8)))*(sum(x(1:8))));
P=1/8*sum(y(1:8))-1/8*sum(x(1:8)*Q);
p=exp(1)^P;
q=Q/log(exp(1));
disp(p);
disp(q);