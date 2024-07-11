A=zeros(10,10);
A(1,1)=9;A(1,2)=-4;A(1,3)=1;
A(2,1)=-4;A(2,2)=6;A(2,3)=-4;A(2,4)=1;
for i=3:10-2
    A(i,i-2)=1;A(i,i-1)=-4;A(i,i)=6;A(i,i+1)=-4;A(i,i+2)=1;
end 
A(9,7)=1;A(9,8)=-4;A(9,9)=5;A(9,10)=-2;
A(10,8)=1;A(10,9)=-2 ;A(10,10)=1;
disp(A);
L=zeros(10,10);
for i=10:-1:1
    L(i,i)=A(i,i);
    for k=i+1:1:10
        L(i,i)=L(i,i)-L(i,k)*L(i,k);
    end
    L(i,i)=sqrt(L(i,i));
    for j=1:1:i-1
        L(j,i)=A(i,j);
        for k=i+1:1:10
            L(j,i)=L(j,i)-L(i,k)*L(j,k);
        end
        L(j,i)=L(j,i)*1.0/L(i,i);
    end
end
disp(L);
