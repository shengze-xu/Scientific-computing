format long e
x=[];
y=[];
for n=1:8
    x(n)=n;
    y(n)=log(abs(eigenvalue2(n)));
end
%y=A+Bx;
xy=[];
x2=[];
for n=1:8
    xy(n)=x(n)*y(n);
    x2(n)=x(n)*x(n);
end
B=(sum(xy(1:8))-1/8*sum(x(1:8))*sum(y(1:8)))/(sum(x2(1:8))-1/8*(sum(x(1:8)))*(sum(x(1:8))));
A=1/8*sum(y(1:8))-1/8*sum(x(1:8)*B);
a=exp(1)^A;
b=B/log(exp(1));
disp(a);
disp(b);
