format long e
A=[2 1 -1
    1 2 -1
    -1 -1 2];
b=[1
   1
   1];
X0=[0
    0
    0];
Jacobi_2(A,b,X0,inf,1e-3,1000,0);