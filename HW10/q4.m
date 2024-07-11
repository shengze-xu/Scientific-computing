format long e
A=[1 -1 0
   -2 4 -2
   0 -1 1];
B=[2 -1 0
   -1 0 2
    1 1 3];
x0=[1;0;1];
eps=1e-9;
N=10000;
[eigenvalue1,eigenvector1]=Power(A,x0,eps,N);
[eigenvalue2,eigenvector2]=Power(B,x0,eps,N);
disp(eigenvalue1);
disp(eigenvector1);
disp(eigenvalue2);
disp(eigenvector2);
