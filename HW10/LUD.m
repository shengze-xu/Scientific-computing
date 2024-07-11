function [L U D]=LUD(A)
    [n m]=size(A);
    L=zeros(size(A));
    U=zeros(size(A));
    D=zeros(size(A));
    for i=1:n-1
        L(i+1:end,i)=A(i+1:end,i);
        U(i,i)=A(i,i);
        D(i,i+1:end)=A(i,i+1:end);
    end
    U(n,n)=A(n,n);
end
