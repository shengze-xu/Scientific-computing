x=1; % 初始值 
esp=eps; % 迭代终止条件 
N=100; % 最大迭代次数 
y=zeros(N, 1); % 暂存 x 变量的空间
for t=1:N 
    x=func(x); 
    y(t)=x; 
    fprintf('第 %d 次, x=%f\n', t, x); 
    if t>1
        if abs(y(t)-y(t-1))<esp 
            break; 
        end
    end
end
disp(eps);