format long e
A=[-4 14 0
    -5 13 0
    -1 0 2];
x0=[1;1;1];
eps=1e-9;
N=10000;
[eigenvalue,eigenvector]=Inversepower(A,x0,eps,N);
disp(eigenvalue);
disp(eigenvector);
