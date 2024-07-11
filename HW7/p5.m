format long e;
syms x;
real1=double(int(cos(x)/sqrt(x),0,1));
real2=double(int(sin(x)/sqrt(x),0,1));%计算真实值
f=inline("cos(x)","x");
g=inline("sin(x)","x");
for n=1:1:5
    ans=func5(f,n);
    fprintf('等分区间:%d 函数计算结果：%.10f 误差：%e\n',n,ans,ans-real1);
end
for n=1:1:5
    ans=func5(g,n);
    fprintf('等分区间:%d 函数计算结果：%.10f 误差：%e\n',n,ans,ans-real2);
end