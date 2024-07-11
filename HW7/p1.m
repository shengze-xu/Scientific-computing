format long e;
syms x;
f=inline("cos(x)/sqrt(x)","x");
g=inline("sin(x)/sqrt(x)","x");
real1=double(int(cos(x)/sqrt(x),0,1));
real2=double(int(sin(x)/sqrt(x),0,1));
fprintf('f积分真实值：%.10f\n',real1);
for n=100:100:1000 
    ans=func1(f,n,0,1);
    fprintf('等分区间:%d 函数计算结果：%.10f 误差：%e\n',n,ans,ans-real1);
end
fprintf('g积分真实值：%.10f\n',real2);
for n=100:100:1000 
    ans=func1(g,n,0,1);
    fprintf('等分区间:%d 函数计算结果：%.10f 误差：%e\n',n,ans,ans-real2);
end