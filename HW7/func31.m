function ans=func31(f,n,a,b)
    h=(b-a)/n;
    sum=cos(0);
    for i=1:1:n-1
        sum=sum+f(i*h);
    end
    sum=sum+cos(1);
    ans=sum*h;
end

