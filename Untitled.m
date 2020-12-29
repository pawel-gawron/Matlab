clear all
close all
clc
k=0:10:360;
y=sind(k);
plot(y,'r')
hold on
y2=cosd(k);
plot(y2,'g');
hold on
y3=y+y2;
plot(y3,'c');
hold on
y4=y-y2;
plot(y4,'m');
hold on
y5=y.^2;
plot(y5,'y');
hold on
y6=y2.^2;
plot(y6,'b');
hold on
grid on
axis tight
title ('Wykresy funkcji')
xlabel('Os x');
ylabel('Os y');
legend('sin(x)','cos(x)','sin(x)+cos(x)','sin(x)-cos(x)','sin(x)^2','cos(x)^2)')

fid=fopen('dane.txt','w');
for i=1:length(k)
    fprintf (fid, '%d & %.3f & %.3f & %.3f & %.3f & %.3f & %.3f \\\\ \\hline \r\n', k(i), y(i),y2(i),y3(i),y4(i),y5(i),y6(i))
end
fclose(fid);
