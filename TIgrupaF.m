close all 
clear all
clc

t=-2:0.1:2
f1=3+t.^2
f2=-3-t.*abs(t)
hold on
plot(t,f1)
plot(t,f2)
title('Wykres')
xlabel('Os x')
ylabel('Os y')
legend('f1', 'f2')

fid=fopen('danegrupaF.txt','w')
for i=1:length(t)
    fprintf(fid, '%.6f & %.6f & %.6f \\\\ \\hline \n', t(i), f1(i), f2(i))
end

fclose(fid)