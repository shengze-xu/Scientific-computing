syms x4;
f4=sin(x4)/(x4);
f=inline('sin(x)/x','x');
ans1=pi/2*(1+f(pi/2))/2
ans2=pi/12*(1+4*f(pi/4)+f(pi/2))
disp(ans1);
disp(ans2);
error1=1/12*(pi/2)^3*max(abs(subs(diff(f4,x4,2),x4,[0.01:0.01:pi/2])));
error2=1/2880*(pi/2)^5*max(abs(subs(diff(f4,x4,4),x4,[0.01:0.01:pi/2])));
fprintf('%e\n',error1);
fprintf('\n');
fprintf('%e\n',error2);