function ans=comtrapezium(f,n,a,b)
    h=(b-a)/n;
    sum=f(a);
    for i=a+h:h:b-h 
        sum=sum+2*f(i);
    end
    sum=sum+f(b);
    ans=sum*h/2;
end