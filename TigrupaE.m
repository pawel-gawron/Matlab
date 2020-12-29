clear all
close all
clc

t=0:0.1:2.5

e1=-1+exp(-2*t)
e2=4*t.*exp(-2*t.^2)
hold on

plot(t, e1)
plot(t, e2)
title('Wykres')
xlabel('t[s]')
ylabel('f(t)')
legend('e1(t)', 'e2(t)')

fid=fopen('danegrupaE.txt','w')

for i=1:length(t);
fprintf(fid, '%6.6f & %6.6f & %6.6f  \\\\ \\hline \n', t(i), e1(i), e2(i));
end
fclose(fid);