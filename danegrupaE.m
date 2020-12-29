close all
clear all
clc

t=0:0.1:2.5

e1=-1+exp(-2*t)
e2=4*t.*exp(-2*t.^2)

hold on
plot(t,e1)
plot(t,e2)
title('Wykres')
legend('e1','e2')
xlabel('Os x')
ylabel('Os y')

fid=fopen('grupaE.txt','w')
for i=1:length(t)
fprintf(fid, '%.6f & %.6f & %.6f\\\\ \\hline \n',t(i), e1(i), e2(i))
end
fclose(fid)