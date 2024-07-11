function ans= simpson(f,a,b)
    ans=1/6*(b-a)*(f(a)+4*f((a+b)/2)+f(b));
end



