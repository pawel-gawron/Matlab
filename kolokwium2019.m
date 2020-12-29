clear all
close all
clc
t=-20:0.1:20
B=[0.25 0.5 0.72 1]

%y=1./(1+exp(-0.25*t))
%y1=1./(1+exp(-0.5*t))
%y2=1./(1+exp(-0.72*t))
%y3=1./(1+exp(-1*t))
y=[]
for i=1:length(B)
    
  y=[y;1./(1+exp(-B(i)*t))]
   
end
hold on
%plot(t,y)
%plot(t,y1)
%plot(t,y2)
%plot(t,y3)
%plot(x,y)

plot(t,y)

fid=fopen('danekolokwium2019.txt','w')
for i=1:length(t)
fprintf(fid, '%.3f & %.6f & %.6f & %.6f & %.6f \\\\ \\hline \n', B, y(i), y(i), y(i), y(i))
end 
fclose(fid)