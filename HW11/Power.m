function [c,y]=	Power(A,x0,eps,N) 
    k=1;                       
    z=0;                
    y=x0./max(abs(x0)); 
    x=A*y;            
    xmax=max(x);         
    if abs(z-xmax)<eps      
        c=max(x);
        return;
    end
    while abs(z-xmax)>eps && k<N
        k=k+1;
        z=xmax;
        y=x./max(abs(x));   
        x=A*y;
        xmax=max(x);     
    end
    [m,i]=max(abs(x));   
    c=x(i);
end
