x1=0:0.05:1;
y1=1*1.0./(1+25*x1.^2);
x2=x1.^2;
y2=1*1.0./(1+25*x2.^2);
x=0:0.01:1;
y=1*1.0./(1+25*x.^2);
n1=length(x1);
N=length(x);
caculatedvalue1=zeros(1,n1);
caculatedvalue2=zeros(1,n1);

M1=notaknotspline(x1,y1);
for i=1:N
    for j=1:n1-1
        if (x(i)>=x1(j)) && (x(i)<=x1(j+1))
            caculatedvalue1(i)=(1+2*1.0*(x(i)-x1(j))/(x1(j+1)-x1(j)))*(x(i)-x1(j+1))*(x(i)-x1(j+1))/((x1(j)-x1(j+1))^2)*y1(j)+(1+2*1.0*(x(i)-x1(j+1))/(x1(j)-x1(j+1)))*(x(i)-x1(j))*(x(i)-x1(j))/((x1(j)-x1(j+1))^2)*y1(j+1)+(x(i)-x1(j))*1.0*(x(i)-x1(j+1))*(x(i)-x1(j+1))/((x1(j)-x1(j+1))^2)*M1(j)+(x(i)-x1(j+1))*1.0*(x(i)-x1(j))*(x(i)-x1(j))/((x1(j)-x1(j+1))^2)*M1(j+1);
        end
    end
end
error1=y-caculatedvalue1;
subplot(1,2,1);
plot(x,error1,'r');

M2=notaknotspline(x2,y2);
for i=1:N
    for j=1:n1-1
        if (x(i)>=x2(j)) && (x(i)<=x2(j+1))
            caculatedvalue2(i)=(1+2*1.0*(x(i)-x2(j))/(x2(j+1)-x2(j)))*(x(i)-x2(j+1))*(x(i)-x2(j+1))/((x2(j)-x2(j+1))^2)*y2(j)+(1+2*1.0*(x(i)-x2(j+1))/(x2(j)-x2(j+1)))*(x(i)-x2(j))*(x(i)-x2(j))/((x2(j)-x2(j+1))^2)*y2(j+1)+(x(i)-x2(j))*1.0*(x(i)-x2(j+1))*(x(i)-x2(j+1))/((x2(j)-x2(j+1))^2)*M2(j)+(x(i)-x2(j+1))*1.0*(x(i)-x2(j))*(x(i)-x2(j))/((x2(j)-x2(j+1))^2)*M2(j+1);
        end
    end
end
error2=y-caculatedvalue2;
subplot(1,2,2);
plot(x,error2,'r');

disp(error1(4));
disp(error1(98));
disp(error2(4));
disp(error2(98));
