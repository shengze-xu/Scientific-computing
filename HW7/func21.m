function ans=func21(f,n,a,b)
	h=(b-a)/n;
    ans=4*sqrt(h)/3*cos(0)+2*sqrt(h)/3*cos(h)+f(1)*h/2;
    for i=2:1:n-1
        ans=ans+h*f(i*h);
    end
end