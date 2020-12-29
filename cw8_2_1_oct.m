close all, clc, clear all
% Parulski

% pkg load control % polecenie Octave'a



%%
s = tf('s')

k  = 2;
a2 = 4;
a1 = 2;
a0 = 4;

%% Punkt 2.1
Lo = k;
Mo = a2*s^2 + a1*s + a0;
G = Lo/Mo


disp('------- Pierwiastki --------')
roots([a2 a1 a0])
pole(G)

%% Punkt 2.2
% ltiview(G)

figure(1)
subplot(2, 1, 1)
step(G)
title('Skokowa OBIEKT')
grid on

subplot(2, 1, 2)
impulse(G)
title('Impulsowa OBIEKT')
grid on



figure(2)
nyquist(G)


%%  Punkt 3.1

% Regulator
disp('----------- Punkt 3.1 ----------- ')
disp('Nastawy regultora')
% kp  = 3
% T_i = 4

% Niestabilne - uwaga
kp  = 10
T_i = 1


PI = kp * (1+ 1/(T_i*s))


%%  Punkt 3.2
disp('----------- Punkt 3.2 ----------- ')

G_otw = PI * G

disp('Bieguny otwartego')
pole(G_otw)

figure(3)
subplot(2, 1, 1)
step(G_otw)
title('Skokowa OTWARTY')
grid on

subplot(2, 1, 2)
impulse(G_otw)
title('Impulsowa OTWARTY')
grid on

figure(4)
nyquist(G_otw)
title('Uklad otwarty')



%%  Punkt 3.4
disp('----------- Punkt 3.4 ----------- ')

G_z = feedback(G_otw,1)


%%  Punkt 3.5
disp(' ----------- Punkt 3.5 ----------- ')
disp('Bieguny zamknietego')
pole(G_z)

figure(5)
step(G_z)


disp(' ----------- Punkt 3.6 ----------- ')

a_0 = kp*k;
a_1 = a0*T_i + kp*k*T_i;
a_2 = a1*T_i;
a_3 = a2*T_i;

Del_2 = [a_2 a_0; a_3 a_1]
det(Del_2)

% Del_3 = [a_2 a_0 0; a_3 a_1 0; 0 a_2 a_0]
% det(Del_3)


disp(' ----------- Punkt 3.6 ----------- ')
figure(6)
nyquist(G_otw)



disp(' ----------- Punkt 4.2 ----------- ')
%%  Punkt 4.2
T_i = a2*k*kp/(a0*a1+a1*k*kp)

% return
%%  Punkt 4.3

% wekt_Ti = [];
figure(10)

for k_p = 1:0.5:100
T_i = a2*k*k_p/(a0*a1+a1*k*k_p);
% wekt_Ti = [wekt_Ti; T_i];
plot (k_p,T_i,'r*')
hold on
end

xlabel('k_p')
ylabel('T_i')
print('kp_Ti','-dpng','-r300')

return






%%
kp = 3
T_i = a2*k*kp/(a0*a1+a1*k*kp)
% Dla wartoœci T_i powy¿ej krzywej - uk³ad zamkniêty jest stabilny

