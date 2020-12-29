clear;
clc;

a = -3;
b = 3;

left = a;
right = b;
z = -2;
delta = 10^-5;

n=1;
tn(n)=n-1;
x(n)=right;
middle=right;

for k=1:2
while abs(task(middle,z)) > delta && abs(right - left) > delta
    n=n+1;
    tn(n)=n-1;
    middle=search(left, right);
    ymiddle=task(middle,z);
    yleft=task(left,z);
    yright=task(right,z);
    zero=yleft*ymiddle;
    if zero < 0
        right = middle;
        yright=ymiddle;
    elseif zero == 0
        x(n) = middle;
    else 
        left=middle;
        yleft=ymiddle;
    end
    x(n)=middle;
end
    left = middle + delta;
    right=b;
    middle=search(left, right);
end

function y=task(x,z)
y=x^2+z;
end

function middle=search(left, right)
middle = left + (right - left)/2;
end