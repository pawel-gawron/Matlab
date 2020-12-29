close all;
t=0:0.01:1;
f=2;
y=sin(2*pi*t*f);
y2=cos(2*pi*t*f);
plot(t,y)
figure
plot(t,y2,'g')
