function X=Jacobi_2(A,b,X0,Norm,Error,Max,p)
if nargin==6
    p=0;
end
a=[];
x=[];
[N N]=size(A);
X=X0;
[L,D,U]=LUD(A);
B=eye(N)-inv(D)*A;
d=inv(D)*b;
X1=A\b;
Result=Ifconverge(B);
if Result~=1
    error('迭代算法不收敛');
    return
end
disp '迭代算法收敛，继续计算...'
for i=1:Max
    X=B*X+d;
    errX=norm(X-X1,Norm);
    %X0=X;
    a(i)=errX;
    x=i;
    if errX<Error
        diedaicishu=i;
        if p==1
            disp('迭代次数：')
            disp(diedaicishu)
            plot(1:x,a);
        end
        return
    end
end
if errX>=Error
    disp('请注意：Jacobi迭代次数已经超过最大迭代次数Max.')
end
if p==1
    plot(1:x,a);
end
end