function [X,Result]=Gauss_Seidel(A,b,X0,Norm,epsilon,Max)
    a=[];x=[];[N N]=size(A);X=X0;
    [L,D,U]=LUD(A);
    B=-inv(D+L)*U;
    d=inv(D+L)*b;
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
