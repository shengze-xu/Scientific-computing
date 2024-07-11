n=1;
m=zeros(n,n);
while 1
    H=returnH(n);H0=H;
    x=ones(n,1);b=H*x;x1=b; 
    [H,x1]=change(H,x1,n);
    if max(abs(x-x1))/max(abs(x))>=1
        break;
    end
    n=n+1;
end
cond=(max(abs(x-x1))/max(abs(x)))/(max(abs(b-H0*x1))/max(abs(b)));
disp("最小的n：");disp(n);
disp("此时的条件数：");disp(cond);
disp("残差的无穷范数：");disp(r1);
disp("解误差的无穷范数：");disp(r2);