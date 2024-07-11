function [X,Result]=Jacobi(A,b,X0,Norm,epsilon,Max)
    a=[];x=[];[N N]=size(A);X=X0;
    [L,D,U]=LUD(A);
    B=eye(N)-inv(D)*A;
    d=inv(D)*b;
    X1=A\b;
    Result=Ifconverge(B);
    for i=1:Max
        X=B*X+d;
        err=norm(X-X1,Norm);
        a(i)=err;
        x=i;
        if err<epsilon
            return
        end
    end
end
