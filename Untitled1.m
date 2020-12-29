clear all
close all
clc

t=0:0.01:1;
f = [1 2 3]
g = 'rgb'

for i=1:length(f)
    y=sin(2*pi*f(i)*t);
    plot(2*pi*t,y,g(i))
    hold on
end

xlim([0 2*pi])
ylim([-1.2 1.2])
grid on
%axis tight