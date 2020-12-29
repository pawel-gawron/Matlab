clear all, clc, close all

% pkg load control % polecenie Octave'a

s = tf('s');

%1
R1 = 1;
R2 = 2;
L = 2;
C = 0.5;
w1=10;
w2=0.1;
w3=1;
w4=100;

licznik = R1+s*L;
mianownik = (R1*L*C+R2*L*C)*s*s + (L+R1*R2*C)*s+R1;

G = licznik/mianownik;

U1s=10/(s*s+100);
UCs=U1s*G;


% figure(1)
% [x,y]=step(G);
% [z,v]=impulse(G);
% subplot(1,2,1);
% plot(y,x);
% subplot(1,2,2);
% plot(v,z);

% figure(2)
% bode(G);
% 
% figure(3)
% nyquist(G);
% 
% figure(4)
% step(G);

figure(5)
impulse(UCs,10);


%2
% B=2;
% m=0.5;
% C1=0.25;
% C2=4;
% 
% w1=10;
% w2=0.1;
% w3=1;
% w4=100;
% 
% licznik = s*B;
% mianownik = s*s*s*m*B + s*s*m*C2+s*(C2*B+C1*B)+C1*C2;
% 
% G = licznik/mianownik;
% 
% U1s=w1/(s*s+w1*w1);
% UC1s=U1s*G;
% 
% U2s=w2/(s*s+w2*w2);
% UC2s=U2s*G;
% 
% U3s=w3/(s*s+w3*w3);
% UC3s=U3s*G;
% 
% U4s=w4/(s*s+w4*w4);
% UC4s=U4s*G;
% 
% 
% % figure(1)
% % step(G);
% % 
% % figure(2)
% % impulse(UC1s,10);
% 
% figure(3)
% bode(G);
% 
% % figure(4)
% % nyquist(G);
% 
% 
% % figure(2)
% % % impulse(UC1s,10);
% % impulse(UC2s,1000);
% % 
% % figure(3)
% % bode(G);
% % 
% % figure(4)
% % nyquist(G);
