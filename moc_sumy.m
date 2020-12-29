% obliczanie mocy i wariancji sumy/roznicy sygnalow
clear
% generowanie sygna³ów deterministycznych
% nalezy wpisac wartosci probek dwoch wektorow x i y
% wektory musza byc tego samego rozmiaru
x = [1 1 -1 -1];
y = [2 -2 2 -2];
% Dodanie dowolnej stalej do wybranego sygna³u
x = x + 0
y = y + 0
disp('**********   N O W E   D A N E   **********')
%_____________________________________
% generowanie sygnalow przypadkowych
% z wykorzystaniem MODELU w simulinku
% mxzad = 1;
% vxzad = 2;
% sx = 23435; % ziarno generatora x
% myzad = 5;
% vyzad = 1;
% sy = 24242; % ziarno generatora y
% k = 3; % wzmocnienie statyczne w torze y
% Ts = 1; % czas probkowania
% N = 20; % rozmiar wektorow probek
% sim('nazwa_pliku_MODELU') % uruchomienie modelu
%_______________________________________
% wyjscie z rowne sumie lub roznicy x i y
z = x + y;
% obliczanie wartosci srednich z pomiaru
mx = mean(x);
my = mean(y);
mz = mean(z);
% tworzenie sygnalow scentrowanych
x0 = x  -mx;
y0 = y - my;
z0 = z - mz;
% obliczanie mocy calkowitych
px = mean(x.*x);
py = mean(y.*y);
pz = mean(z.*z);
% obliczanie mocy skladowych zmiennych (wariancji)
px0 = mean(x0.*x0);
py0 = mean(y0.*y0);
pz0 = mean(z0.*z0);
% obliczanie mocy wzajemnej
pxy = mean(x.*y);
% obliczanie kowariancji
cxy = cov(x,y,1); % cxy jest macierz¹ 2x2, 1 - obciazona
cxy = cxy(1,2); % wybranie elementu o wartosci kowariancji
%_________________________________________
% obliczanie wariancji obci¹¿onych
% w analizie sygna³ów deterministycznych
vx = var(x,1);
vy = var(y,1);
vz = var(z,1);
%_________________________________________
% obliczanie wariancji nieobciazonych
% w analizie sygnalow przypadkowych
% vx = var(x);
% vy = var(y);
% vz = var(z);
