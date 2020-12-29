clc
clear

a = 0;

b = 0.8;

n = 176
n1=1:n;

delta = (b-a)/n;
sum=0;
for i=1:n-1
    x=a+i*delta;
    sum=sum+2*abs(f(x));
end

calka=(delta/2)*(abs(f(a))+abs(f(b))+sum)

% blad = ((-(b-a)^3)/12*n^3).*sum(diff(f(n1)));

function y = f(x)
y=0.2+25*x-200*x.^2+675*x.^3-900*x.^4+400*x.^5;
end