format long e
eigenvalue1=[];
eigenvalue2=[];
cond=[];
for n=1:8
    A=hilb(n);
    x0=ones(n,1);
    eps=1e-14;
    N=100000;
    [eigenvalue1(n),eigenvector1]=Power(A,x0,eps,N);
    [eigenvalue2(n),eigenvector2]=Inversepower(A,x0,eps,N);
    cond(n)=eigenvalue1(n)/eigenvalue2(n);
    fprintf("n=%d\n",n);
    fprintf("最大特征值=%e\n",eigenvalue1(n));
    fprintf("最大特征值对应向量=\n");
    disp(eigenvector1);
    fprintf("最小特征值=%e\n",eigenvalue2(n));
    fprintf("最小特征值对应向量=\n");
    disp(eigenvector2);
    fprintf("谱条件数=%e\n",cond(n));
end

x=[1 2 3 4 5 6 7 8];
%plot(x,eigenvalue1);
%plot(x,eigenvalue2);
plot(x,cond);
xlabel('n阶矩阵');
%ylabel('最大特征值');
%ylabel('最小特征值');
ylabel('谱条件数');
