clear all, clc, close all
close all hidden

s = tf('s')

k = 1
T = 2
T1 = 3
T2 = 4
Tn = 5
ksi = 0.3

disp('-------------------------------')

disp('Proporcjonalny')
prop = k*s^0


disp('-------------------------------')
disp('Inercyjny 1-rzedu')
in1 = k/(s*T+1)

disp('-------------------------------')
disp('Inercyjny 2-rzedu')
in2 = k/((s*T+1)^2)

disp('-------------------------------')
disp('Dwuinercyjny')
dwu = k/((s*T1+1)*(s*T2+1))

disp('-------------------------------')
disp('Oscylacyjny')
osc = k/(s^2*Tn^2 + 2*ksi*Tn*s + 1)

disp('-------------------------------')
disp('Inercyjny n-rzedu (4)')   % 4 rzad
inn = k/((s*T+1)^4)

disp('-------------------------------')
disp('Calkujacy idealny')
calkid = k/s

disp('-------------------------------')
disp('Calkujacy rzeczywisty')
calkrz = k/(s*(s*T+1))

disp('-------------------------------')
disp('Rozniczkujacy rzeczywisty')
rozrz = (s*k)/(s*T+1)

disp('-------------------------------')
disp('Rozniczkujacy idealny')
rozide = (s*k)

%% WYKRESY

ltiview(prop,in1, in2, dwu,osc,inn,calkid,calkrz,rozrz,rozide)
return

% ltiview(in1)
% ltiview(in2)
% ltiview(dwu)
% ltiview(osc)
% ltiview(inn)
% ltiview(calkid)
% ltiview(calkrz)
% ltiview(rozrz)

return

% Proporcjonalny
figure(1) 

subplot(2,2,1)
nyquist(prop);
title('Proporcjonalny Nyquist')
 

subplot(2,2,2)
bode(prop);
title('Proporcjonalny BODE')

% Inercyjny I-rzêdu
subplot(2,2,3)
P = nyquistoptions;
P.ShowFullContour = 'off'; 
nyquistplot(in1,P);
title('Inercyjny 1 Nyquist')
 
subplot(2,2,4)
bode(in1);
title('Inercyjny 1 BODE')


%%
figure(2) 

% Inercyjny 2
subplot(2,2,1)
nyquist(in2);
title('Inercyjny 2 Nyquist')
 
subplot(2,2,2)
bode(in2);
title('Inercyjny 2 Bode')

% Dwuinercyjny
subplot(2,2,3)
nyquist(dwu);
title('Dwuinercyjny Nyquist')

subplot(2,2,4)
bode(dwu);
title('Dwuinercyjny Bode')


%%
figure(3) 

% Oscylacyjny
subplot(2,2,1)
nyquist(osc)
title('Oscylacyjny Nyquist')

subplot(2,2,2)
bode(osc)
title('Oscylacyjny Bode')

%
% Inercyjny n-rzedu
subplot(2,2,3)
nyquist(inn);
title('Inercyjny 4-rzedu Nyquist')

subplot(2,2,4)
bode(inn);
title('Inercyjny 4-rzedu Bode')


%%
figure(4) 

% Calkujacy idealny
subplot(2,2,1)
nyquist(calkid);
title('Calkujacy idealny Nyquist')

subplot(2,2,2)
bode(calkid);
title('Calkujacy idealny Bode')

% Calkujacy rzeczywisty
subplot(2,2,3)
nyquist(calkrz);
title('Calkujacy rzeczywisty Nyquist')

subplot(2,2,4)
bode(calkrz);
title('Calkujacy rzeczywisty Bode')


%%
figure(5) 

% Rozniczkujacy rzeczywisty
subplot(2,1,1)
nyquist(rozrz);
title('Rozniczkujacy rzeczywisty Nyquist')


subplot(2,1,2)
bode(rozrz);
title('Rozniczkujacy rzeczywisty Bode')

%%



