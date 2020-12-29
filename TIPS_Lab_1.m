if 0
close all
f1 = figure;
a1 = axes;
axis([0 10 0 1]);
l1 = line([0,1], [0,1]);
set(l1, 'color', 'r');

for i =1:10
    set(l1, 'xdata', [0,i]);
    drawnow;
    pause(1);
end  


n = randn(10000, 1);
histogram(n, 20);
end

close all
f1 = figure;
a1 = axes;
axis([0 5 -3 3]);
a = 0:4*pi/200:16*pi;
s1 = 2.5*sin(a);
a = a/(pi*4);
plot(a, s1, '.');