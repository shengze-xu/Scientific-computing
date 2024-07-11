function [H,x1] = change(H,x1,n)
    for k=1:n-1
        a=H(k:n,k);
        [s,flag]=max(abs(a));
        if s==0
            break;
        end
        flag=flag+k-1;
        for j=1:n
            t=H(flag,j);
            H(flag,j)=H(k,j);
            H(k,j)=t;
        end 
        t=x1(flag);
        x1(flag)=x1(k);
        x1(k)=t;
        for i=k+1:n
            m(i,k)=H(i,k)/H(k,k);
            H(i,k)=m(i,k);
        end  
        for i=k+1:n
            for j=k+1:n
                H(i,j)=H(i,j)-m(i,k)*H(k,j);
            end
            x1(i)=x1(i)-m(i,k)*x1(k);
        end
    end
    for i=n:-1:1
        for j=i+1:n
            x1(i)=x1(i)-H(i,j)*x1(j);
        end
        x1(i)=x1(i)/H(i,i);
    end
end

