function ans=comsimpson(f,n,a,b)
    format long;
    h=(b-a)/n;
    sum=f(a);
    for i=a+h:h:b-h 
        sum=sum+2*f(i);
    end
    for i=a+h/2:h:b-h/2 
        sum=sum+4*f(i);
    end
    sum=sum+f(b);
ans=sum*h/6;
end
