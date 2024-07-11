function y=lagrange(x0,y0,x)
n=length(x0);
m=length(x);

for i=1:m
    t=x(i);
    sum=0.0;
    for j=1:n
        a=1.0;
        for k=1:n
            if k~=j
                a=a*(t-x0(k))/(x0(j)-x0(k));
            end
        end
        sum=a*y0(j)+sum;
    end
    y(i)=sum;
end

