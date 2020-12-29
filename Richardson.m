clear
clc

x = 1;
h = 0.5;
eps_step = 0.00001;
R(1, 1) = (f(x + h) - f(x - h))/(2*h);
for i=1:100
   h = h/2;

   R(i + 1, 1) = (f(x + h) - f(x - h))/(2*h);

   for j=1:i
      R(i + 1, j + 1) = (4^j*R(i + 1, j) - R(i, j))/(4^j - 1);
   end

   if ( abs( R(i + 1, i + 1) - R(i, i) ) < eps_step )
      break;
   end
end

function y = f(x)
y=0.2+25*x-200*x.^2+675*x.^3-900*x.^4+400*x.^5;
end