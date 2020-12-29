clear all, clc, close all hidden

%% Punkt 3.1

k1 = 1;
k2 = .2;
T11 = 1;
T12 = 2;
T21 = 1;
T22 = 2;

%%
s = tf('s')

disp('Dwuinercyjny')
dwu = k1/((s*T11+1)*(s*T12+1))
pole(dwu)

disp('Trzeciego rzêdu')
trzy = k2/(s*(s*T21+1)*(s*T22+1))
pole(trzy)

ltiview(dwu, trzy)


%% Punkt 3.5 i 3.10
disp('REGULATORY')

kp = 100;
Ti = 10;

