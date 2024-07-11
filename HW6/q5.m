format long e
syms x1;
f1=exp(x1)*sin(x1);
ans=1.0/(1*10^(-6))/12*double(max(abs(subs(diff(f1,x1,2),x1,[1:0.001:2]))));
n=ceil(sqrt(ans));
f=inline('exp(x)*sin(x)','x');
ans1=comtrapezium(f,n,1,2);
true=int(f1,x1,1,2);
disp(n);
disp(ans1);
disp(vpa(true));

