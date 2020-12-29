clear all
close all
clc

t=0:0.2:5
a1=1-exp(-1*t)
a2=(4*t.^2).*exp(-2*t)

hold on

plot(t,a1)
plot(t,a2)
title('Wykres')
xlabel('Os x')
ylabel('Os y')
legend('a1','a2')

fid=fopen('dane.txt','w')
for i=1:length(t)
   fprintf(fid, '%6.6f & %6.6f & %6.6f \\\\ \\hline \n', t(i), a1(i), a2(i)) 
end
fclose(fid);