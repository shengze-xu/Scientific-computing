syms x;
real1=double(int(cos(x)/sqrt(x),0,1));
real2=double(int(sin(x)/sqrt(x),0,1));%计算真实值
for n=1:1:5
    syms x;
    p=zeros(n+1,1);
    a=zeros(n,1);
    A=zeros(n,n);
    m=zeros(1,n);
    b=zeros(1,n);    %数据初始化
    y=1.0/(2^n*factorial(n))*diff((x*x-1)^(2*n),2*n);
    p1=sym2poly(y); %提取函数多项式系数以求根
    for j=1:n+1
        p(j)=p1(2*j-1);
    end
    a=roots(p);
    for i=1:n
        A(:,i)=a.^(i-1);
        m(1,i)=1/(i-1/2);
    end   %建立系数矩阵
    b=m/A; %求出系数的行向量bA=m
    a=a'; %输出为行向量数组，得到Gauss公式所需节点a与系数b
    ff=cos(a);
    result1=dot(ff,b); %利用Gauss公式计算
    fprintf('%d次的Gauss公式下函数f的计算结果：%.10f,与真实值误差为：%e\n',n,result1,result1-real1);
    gg=sin(a);
    result2=dot(gg,b);
    fprintf('%d次的Gauss公式下函数g的计算结果：%.10f,与真实值误差为：%e\n',n,result2,result2-real2);
end