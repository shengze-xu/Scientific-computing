function ans=func5(f,n)
    syms x;
    p=zeros(n+1,1);
    p1=sym2poly(1.0/(2^n*factorial(n))*diff((x*x-1)^(2*n),2*n)); 
    for i=1:n+1
        p(i)=p1(2*i-1);
    end
    xk=zeros(n,1);
    A=zeros(1,n); 
    X=zeros(n,n);
    B=zeros(1,n);
    xk=roots(p);
    for k=1:n
        X(:,k)=xk.^(k-1);
        B(1,k)=1/(k-1/2);
    end
    A=B/X;
    xk=xk';
    ans=dot(f(xk),A);
end