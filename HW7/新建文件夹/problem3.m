syms x;
real1=double(int(cos(x)/sqrt(x),0,1));%计算真实值
for n=20:20:200 
    h=1.0/n;
    result=cos(0)+cos(1);
    for j=1:1:n-1
        result=result+2*cos(j*h*j*h);
    end
    result=result*h; %根据变换后的形式作复化梯形公式
    fprintf('%d个等分区间下函数f的计算结果：%.10f,与真实值误差为：%e\n',n,result,result-real1);
end
fprintf('\n');
real2=double(int(sin(x)/sqrt(x),0,1));
for n=20:20:200 
    h=1.0/n;
    result=sin(0)+sin(1);
    for j=1:1:n-1
        result=result+2*sin(j*h*j*h);
    end
    result=result*h;
    fprintf('%d个等分区间下函数g的计算结果：%.10f,与真实值误差为：%e\n',n,result,result-real2);
end