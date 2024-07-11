function [c,y]=Inversepower(A,x0,eps,N) 
    k=1; r=0;  
    y=x0./max(abs(x0)); 
    [L,U]=lu(A);
    z=L\y;
    x=U\z;
    xmax=max(x);
    c=1/xmax;         
    if abs(xmax-r)<eps  
        return
    end
    while abs(xmax-r)>eps && k<N
        k=k+1;
        r=xmax;
        y=x./max(abs(x));
        z=L\y;
        x=U\z;
        xmax=max(x);   
    end
    [m,i]=max(abs(x)); 
    c=1/x(i); 
end

