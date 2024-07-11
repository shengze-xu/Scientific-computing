format long e
f=inline('exp(x)*sin(x)','x');
n=1;
ans1=comsimpson(f,n,1,3);
ans2=comsimpson(f,2*n,1,3);
while abs(ans1-ans2)>10^(-8)
    n=n+1;
    ans1=comsimpson(f,n,1,3);
    ans2=comsimpson(f,2*n,1,3);
end
disp(ans1);
disp(ans2);