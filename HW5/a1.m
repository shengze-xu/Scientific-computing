format long e
syms x1;
f1=exp(x1);
f=inline('exp(x)','x');
ans1=trap(f,1.1,1.8);
ans2=simpson(f,1.1,1.8);
true=int(f1,x1,1.1,1.8);
disp(ans1);
disp(ans2);
disp(vpa(true));
disp(vpa(true-ans1));
disp(vpa(true-ans2));