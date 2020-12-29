clear all
close all
clc
 t=0:0.01:1;
 f=[1 2 3 ];
 g = 'rgb';
 
for i = 1:3
    y=sin(2*pi*f(i)*t);
    plot (t,y,g(i))
    hold on
  
end
title('tytul')
xlabel('os x')
ylabel('os y')
legend('1','2', '3')
