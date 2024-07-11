syms x;
f=inline("cos(x)/sqrt(x)","x");
g=inline("sin(x)/sqrt(x)","x");
real1=double(int(cos(x)/sqrt(x),0,1));
for n=100:100:1000 
    h=1.0/n;
    result=0+f(1);
    for j=1:1:n-1
        result=result+2*f(j*h);
    end
    result=result*h/2;
    fprintf('%d个等分区间下函数f的计算结果：%.10f,与真实值误差为：%e\n',n,result,result-real1);
end
fprintf('\n');
real2=double(int(sin(x)/sqrt(x),0,1));
for n=100:100:1000 
    h=1.0/n;
    result=0+g(1);
    for j=1:1:n-1
        result=result+2*g(j*h);
    end
    result=result*h/2;
    fprintf('%d个等分区间下函数g的计算结果：%.10f,与真实值误差为：%e\n',n,result,result-real2);
end