clear;
clc;

a = 10^-5;
z = randi([0 20],1,4);
x0 = a;
delta = 10^-5;
n=1;
tn(n)=n;

while 1
    tn(n)=n;
    x0 = x0 - (task(x0,z).*derivativetask(x0));
    x(:,n) = x0;
    
    if abs(task(x0,z)) <= delta
        break;
    end
    n=n+1;
end

plot (tn,x);

function y1=task(x,z)
y1=x.^-1-z;
end

function y2=derivativetask(x)
y2=-1*x.^2;
end