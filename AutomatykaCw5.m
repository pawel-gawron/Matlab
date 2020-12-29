close all, clc, clear all

s = tf('s');
k  = 3;
a2 = 1;
a1 = 3;
a0 = 2;
Lo = k;
Mo = a2*s^2 + a1*s + a0;
G = Lo/Mo
pole(G)

% figure(1)
% subplot(2, 1, 1)
% step(G)
% title('Skokowa OBIEKT')
% grid on
% 
% subplot(2, 1, 2)
% impulse(G)
% title('Impulsowa OBIEKT')
% grid on

kp  = 5
T_i = 0.5

PI = kp * (1+ 1/(T_i*s));

G_otw = PI * G

G_z = feedback(G_otw,1)
disp('Bieguny zamknietego')
pole(G_z)

% step(G_z);
% nyquist(G_otw);

a_0 = kp*k;
a_1 = a0*T_i + kp*k*T_i;
a_2 = a1*T_i;
a_3 = a2*T_i;

Del_2 = [a_2 a_0; a_3 a_1]
det(Del_2)

Del_3 = [a_2 a_0 0; a_3 a_1 0; 0 a_2 a_0]
det(Del_3)

for k_p = 1:0.5:100
T_i = a2*k*k_p/(a0*a1+a1*k*k_p);
% wekt_Ti = [wekt_Ti; T_i];
plot (k_p,T_i,'r*')
hold on
end

xlabel('k_p')
ylabel('T_i')
print('kp_Ti','-dpng','-r300')