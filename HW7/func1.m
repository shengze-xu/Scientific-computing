function ans=func1(f,n,a,b)
	h=(b-a)/n;
	sum=0;
	for i=a+h:h:b-h 
		sum=sum+2*f(i);
	end
	sum=sum+f(b);
	ans=sum*h/2;
end