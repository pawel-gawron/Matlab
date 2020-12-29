clear all
%1
% Ts = 10^(-6); % czestotliwosc probkowania 1 MHz
% f0 = 40000; % czestotliwosc sygnalu dzwiekowego 40 kHz
% td = 0.002; % opoznienie powracajacego sygnalu [s]
% T = 0.01; % czas symulacji [s]
% Tram = 0.01; % czas ramki czasowej [s]
% t1=10; %wypelnienie ramki czasowej sygnalem w procentach
% var=1;%wariancja szumu
% v=340;%predkosc dzwieku [m/s]
% 
% sim('radar_af')
% 
% ko = xcorr(x,y); %korelacja
% N=length(x); %liczba probek w sygnale
% lags=-N+1:N-1; %wektor na osi poziomej korelacji(zakres)
% plot(lags,ko);
% title('Korelacja','FontSize', 20);
% [y_max, x_max] = max(ko); %najwieksza wartosc korelacji
% shift=lags(x_max); %liczba probek o ktore sa przesuniete sygnaly
% T_all = Ts*shift; %potrzebny czas do przejscia sygalu
% D=(T_all*v)/2; %odleglosc od obiektu

%2
% signals=load('signals.dat'); %wczytanie sygnalow
% signals1=signals(1,:); %rozdzielenie sygnalow
% signals2=signals(2,:);
% signals3=signals(3,:);
% signals4=signals(4,:);
% 
% Nsignals1=length(signals1); %dlugosc sygnalow
% 
% lags=-Nsignals1+1:Nsignals1-1; %wektor na osi poziomej korelacji(zakres)
% 
% Fre = 2; %czêstotliwosc sygnalu
% Tp = 10^-3; %czas probkowania
% T = 5; %czas trwania
% t=0:Tp:T-Tp;
% sygnal = sin(2*pi*Fre*t);
% plot(t,sygnal);
% hold on;
% 
% [korelacja1, lag1] = xcorr(sygnal, signals1); %korelacje
% [korelacja2, lag2] = xcorr(sygnal, signals2);
% [korelacja3, lag3] = xcorr(sygnal, signals3);
% [korelacja4, lag4] = xcorr(sygnal, signals4);
% 
% figure();
% subplot(2,2,1);
% plot(lags, korelacja1);
% subplot(2,2,2);
% plot(lags, korelacja2);
% subplot(2,2,3);
% plot(lags, korelacja3);
% subplot(2,2,4);
% plot(lags, korelacja4);
% sgtitle('\fontsize{10} Korelacja sygna³ów z sygna³em wzorcowym')
% 
% [y_max1, x_max1] = max(korelacja1); %najwieksza wartosc korelacji
% [y_max2, x_max2] = max(korelacja2);
% [y_max3, x_max3] = max(korelacja3);
% [y_max4, x_max4] = max(korelacja4);
% 
% shift1=lags(x_max1); %przesuniecie w probkach
% shift2=lags(x_max2);
% shift3=lags(x_max3);
% shift4=lags(x_max4);
% 
% T_all1 = Tp*shift1; %przesuniecie w czasie
% T_all2 = Tp*shift2;
% T_all3 = Tp*shift3;
% T_all4 = Tp*shift4;
% 
% phase1=(360*T_all1*Fre)/(2*pi); %przesuniecie w fazie
% phase2=(360*T_all2*Fre)/(2*pi);
% phase3=(360*T_all3*Fre)/(2*pi);
% phase4=(360*T_all4*Fre)/(2*pi);


%3
load ('spotsMod.csv');
spots = sum(spotsMod(:,2:13),2);
[autocorrelation, lags] = xcorr(spots);
plot(lags, autocorrelation);
title('Autokorelacja danych','FontSize', 20);
[y,x]=findpeaks(autocorrelation);
period=mean(diff(x));