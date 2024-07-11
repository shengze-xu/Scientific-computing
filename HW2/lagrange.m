function p= lagrange(x,X,Y)
L1=length(X);
L2=length(Y);

for i=1:L1
    a=x(i);
    sum=0.0;
    for j=1:L2
        b=1.0;
        for k=1:L2
            if k~=j
                b=b*(a-X(k))/(X(j)-X(k));
            end
        end
        sum=b*Y(j)+sum;
    end
    p(i)=sum;
end

