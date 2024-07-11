function ans=func4(f,n)
    syms x;
    xk=zeros(n,1);
    xk=roots(sym2poly(1.0/(2^n*factorial(n))*diff((x*x-1)^n,n)));
    A=zeros(1,n);
    X=zeros(n,n);
    B=zeros(1,n);
    for k=1:n
        X(:,k)=xk.^(k-1);
        B(1,k)=(1+(-1)^(k-1))*1.0/k;
    end
    A=B/X;
    xk=xk'; 
    ans=dot(f(xk.^2),A);    
end

