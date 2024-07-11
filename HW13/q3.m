format long e;
x=1;
N=10000; 
eps=eps;
cnt=0;
while cnt<N
    x1=func(x);
    cnt=cnt+1;
    if abs(x1-x)<eps
        break;
    end
    x=x1;
end
fprintf('共迭代%d次,解为%.13f\n',cnt,x1);