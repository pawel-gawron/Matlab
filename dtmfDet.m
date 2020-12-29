close all;
clear all;

% wczytywanie danych
x = load('sygnalDtmf.dat');

% parametry sygnalu
fs = 4096;
ts = 1/fs;
N=length(x);
% wektor czasu
t = (0 : length(x) - 1) * ts;
% wyswietlanie sygnalu
plot(t, x);

%dlugosc okna
Nw=2048;

% ------------------------------------
% miejsce na dodatkowe zmienne
% N=length(x);
% delta_fs=fs/N;
%tablica ze wszystkii przyciskami
buttons=['1', '2', '3', 'A';
    '4', '5', '6', 'B';
    '7', '8', '9', 'C';
    '*', '0', '#', 'D'];
%wektor z nizszymi czestotliwosciami
fLow=[697, 770, 852, 941];
%wektor z wyzszymi czestotliwosciami
fHigh=[1209, 1336, 1477, 1633];

% koniec
% ------------------------------------
ff=zeros(length(x) - Nw + 1,10);
% dlugosc okna - prosze dobrac optymalna wartosc
Nw = 2048;
delta_fsw=fs/Nw;
przylozen=length(x) - Nw + 1;

% przesuwajace sie okno o dlugosci Nw
for i = 1 : length(x) - Nw + 1
    % aktualnie rozpatrywany wycinek sygnalu
    curx = x(i : i + Nw - 1);
    Ft=fft(curx);
    
%     k1=round(770*Nw*ts);
%     mod1=(2*abs(Ft(k1+1)))/Nw;
%     
%     k2=round(1209*Nw*ts);
%     mod2=(2*abs(Ft(k2+1)))/Nw;
    
        
    Ft=Ft(1:0.5*size(Ft,2));
    Ft=Ft/Nw;
    mod=2*abs(Ft);
    
    [pks,local]=findpeaks(mod,delta_fsw);
    local(pks<0.4)=0;
    ff(i,1:length(local))=local;
    
    % ------------------------------------
    % tutaj powinien sie znalezc kod rozpoznajacy przycisk
    
    
    % koniec
    % ------------------------------------
end
figure
line((1:przylozen)'*ts, ff(:,1:10));
