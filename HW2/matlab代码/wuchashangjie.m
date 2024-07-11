function y=wuchashangjie(x)
syms a;
b=exp(a^2);
diff11=diff(b,a,11);
maxdiff=subs(diff11,a,1);
x0=-1:0.2:1;
p=1.0;
m=length(x);
for i=1:m
for k=1:11
    t=x(i);
    p=p*(t-x0(k))/k;
end
p=p*maxdiff;
y(i)=p;
end

