clear all
close all
clc

t=0:10:360

s=sind(t)
plot(s,'r')
hold on

c=cosd(t)
plot(c,'g')
hold on

spc=s+c
plot(spc,'c')
hold on

smc=s-c
plot(smc,'m')
hold on

s2=s.^2
plot(s2,'y')
hold on

c2=c.^2
plot(c2,'b')
hold on

axis tight
grid on

xlabel('Os x')
ylabel('Os y')
title('Wykresy funkcji')

fid=fopen('dane.txt','w');

for i=1:length(t)
    fprintf(fid, '%d & %.3f & %.3f & %.3f & %.3f & %.3f & %.3f \\\\ \\hline \r\n', t(i), s(i), c(i), spc(i), smc(i), s2(i), c2(i))
end
fclose(fid);