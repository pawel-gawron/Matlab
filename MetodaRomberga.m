clc
clear

f = @sin;
a = 0;
b = pi/2;
n=10;

Hn = (b - a) ./ (2.^(0:n-1));
R(1,1) = (b - a) * (f(a) + f(b)) / 2;
for i = 2:n
    sum = 0;
    for j = 1:2^(i-2)
        sum = sum + f(a + (2 * j - 1) * Hn(i));
    end
    R(i,1) = R(i-1,1) / 2 + Hn(i) * sum;
    for j = 2:i
        R(i,j) = (4^(j-1) * R(i,j-1) - R(i-1,j-1)) / (4^(j-1) - 1);
    end
end

disp(R);