syms x;
real1=double(int(cos(x)/sqrt(x),0,1));%计算真实值
f=inline("cos(x)/sqrt(x)","x");
g=inline("sin(x)/sqrt(x)","x");
for n=100:100:1000 
    h=1.0/n;
    result=4*sqrt(h)/3*cos(0)+2*sqrt(h)/3*cos(h)+f(1)*h/2;%在第一个区间使用变换后的Newton-Cotes公式计算
    for j=2:1:n-1
        result=result+h*f(j*h);
    end  %利用复化梯形公式计算
    fprintf('%d个等分区间下函数f的计算结果：%.10f,与真实值误差为：%e\n',n,result,result-real1);
end
fprintf('\n');
fprintf('\n');
real2=double(int(sin(x)/sqrt(x),0,1));
for n=100:100:1000 
    h=1.0/n;
    result=4*sqrt(h)/3*sin(0)+2*sqrt(h)/3*sin(h)+g(1)*h/2;
    for j=2:1:n-1
        result=result+h*g(j*h);
    end
   fprintf('%d个等分区间下函数g的计算结果：%.10f,与真实值误差为：%e\n',n,result,result-real2);
end