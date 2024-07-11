function ans=func32(f,n,a,b)
    h=(b-a)/n;
    sum=sin(0);
    for i=1:1:n-1
        sum=sum+f(i*h);
    end
    sum=sum+sin(1);
    ans=sum*h;
end

