format long e;
for m=1:5 
    h=10^(-m); 
    y=2; 
    for i=1:10^m 
        y=(1-h)*y/(1+h)+3*h/(1+h);
    end
    real=3/2+1/2*exp(-2);
    disp(m);
    disp(y); 
    disp(y-real); 
end