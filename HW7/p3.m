format long e;
syms x;
f=inline("2*cos(x*x)","x");
g=inline("2*sin(x*x)","x");
real1=double(int(cos(x)/sqrt(x),0,1));
real2=double(int(sin(x)/sqrt(x),0,1));
fprintf('f积分真实值：%.10f\n',real1);
for n=20:20:200 
    ans=func31(f,n,0,1);
    fprintf('等分区间:%d 函数计算结果：%.10f 误差：%e\n',n,ans,ans-real1);
end
fprintf('g积分真实值：%.10f\n',real2);
for n=20:20:200 
    ans=func32(g,n,0,1);
    fprintf('等分区间:%d 函数计算结果：%.10f 误差：%e\n',n,ans,ans-real2);
end