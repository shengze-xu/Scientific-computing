format short e
x=8;
A=hilb(x);
eps=1e-14 ;
[c,y]=Jacobi(A,eps);
fprintf("特征值=\n");
disp(c);
fprintf("特征向量=\n");
disp(y);
