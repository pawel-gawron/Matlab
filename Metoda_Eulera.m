clear
clc

h = 0.01;
x = 0.01:h:0.05;
y = zeros(size(x));
y(1) = 0;
n = numel(y);

for i = 1:n-1
    f = ((x(i)+(y(i)))/(x(i)-y(i)));
    y(i+1) = y(i) + h*f;
end

plot(x,y);
grid on