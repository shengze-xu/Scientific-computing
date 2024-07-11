format long e
syms x3;
f3=exp(-(x3)^2);
f=inline('exp(-x^2)','x');
ans1=trap(f,1,2);
ans2=simpson(f,1,2);
disp(ans1);
disp(ans2);
error1=1/12*max(abs(subs(diff(f3,x3,2),x3,[1:0.01:2])));
error2=1/2880*max(abs(subs(diff(f3,x3,4),x3,[1:0.01:2])));
fprintf('%e\n',error1);
fprintf('\n');
fprintf('%e\n',error2);