format long e
A=[2 1 -1
    1 2 -1
    -1 -1 2];
b=[1
   1
   1];
A=[-8 1 1
    1 -5 1
    1 1 -4];
b=[1
   16
   7];
X0=[0
    0
    0];
[x1,result1]=Jacobi(A,b,X0,inf,1e-9,1000);
[x2,result2]=Gauss_Seidel(A,b,X0,inf,1e-9,1000);

disp(x1);
disp(x2);

