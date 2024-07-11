format long e;
x=1.5;
eps=1e-12;
N=10000; 
cnt=0;
while cnt<N
    x1=func(x);
    cnt=cnt+1;
    if abs(x1-x)<eps
        break;
    end
    x=x1;
end
fprintf('共迭代%d次,解为%.10f\n',cnt,x1);