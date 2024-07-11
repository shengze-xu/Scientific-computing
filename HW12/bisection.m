function xc=bisection(f,a,b,eps)
    while (b-a)/2>eps
        c=(a+b)/2;     
        if f(c)==0        
            break 
        end
        if f(a)*f(c)<0   
            b=c;
        else                  
            a=c;
        end
    end
    xc=(a+b)/2;
end