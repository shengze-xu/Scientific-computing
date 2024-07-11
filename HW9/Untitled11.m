n=1;
m=zeros(n,n);
while n>0
    H=zeros(n,n);
    for i=1:n
        for j=1:n
            H(i,j)=1/(i+j-1);
        end
    end
    HH=H; %储存原有H
    x=ones(n,1);
    b=H*x; 
    bb=b;  %创立初始方程组Hx=b，bb存放方程解
    for k=1:n-1
        a=H(k:n,k);
        [mx,index]=max(abs(a));
        if mx==0
            break;
        end
        index=index+k-1;
        for j=1:n
            t=H(index,j);
            H(index,j)=H(k,j);
            H(k,j)=t;
        end 
        t=bb(index);
        bb(index)=bb(k);
        bb(k)=t; %按列选主元，并换行
        for i=k+1:n
            m(i,k)=H(i,k)/H(k,k);
            H(i,k)=m(i,k);
        end  
        for i=k+1:n
            for j=k+1:n
                H(i,j)=H(i,j)-m(i,k)*H(k,j);
            end
            bb(i)=bb(i)-m(i,k)*bb(k);
        end %计算乘子并消元
    end
    for i=n:-1:1
        for j=i+1:n
            bb(i)=bb(i)-H(i,j)*bb(j);
        end
        bb(i)=bb(i)/H(i,i);
    end %回代，将近似计算解存入bb
    r=b-HH*bb;
    r1=max(abs(r));%计算残差的无穷范数
    r2=max(abs(x-bb));%计算解误差的无穷范数
    r3=max(abs(x));%计算解的无穷范数
   if r2/r3>=1
        break;
   end  %得到最小的n
    n=n+1;
end
cond=(r2/r3)/(max(abs(r))/max(abs(b)));
disp("最小的n：");disp(n);
disp("此时的条件数：");disp(cond);
disp("残差的无穷范数：");disp(r1);
disp("解误差的无穷范数：");disp(r2);