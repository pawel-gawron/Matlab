clc

x = [1, 4, 6, 5];
y = [0, 1.386294, 1.791759, 1.609438];
[xx, yy] = value(x, y);

xa = [-2:0.02:4];
ya = polyval(xx, xa);
clf,plot(xa, ya, 'b-', x, y, '*'), grid on

function [xx, yy] = value(x, y)
n = length(x)-1;
yy = zeros(n+1, n+1);
yy(1:n+1,1) = y';
for el = 2:n+1
    for it = 1:n+2-el
        yy(it, el) = (yy(it+1, el-1) - yy(it, el-1)) / (x(it+el-1) - x(it));
    end
end

a = yy(1, :);
xx = a(n+1);

for el = n:-1:1
    xx = [xx a(el)] - [0 xx * x(el)];
end
end

