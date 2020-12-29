close all
clc
clear

%1
% T = 10*(1/5);
% 
% fs = 200000;
% t = 0:1/fs:T;
% 
% x = 2.56*sawtooth(2*pi*5*t);
% 
% plot(t,x)
% grid on
% 
% N = size(x,2);
% Ex = sum((abs(x)).^2);
% Px = Ex/N;
% xsk = sqrt(Px);
% xSRB = (1/N)*sum(abs(x));
% K = xsk/xSRB;
% title('Sygna³ pi³okszta³tny')
% xlabel('Czas');
% ylabel('Wartosc');

%3
% u = load ('u.dat');
% N = size(u,2);
% R = 0.01;
% Pu = sum(u.^2/R)/N;
% okno = 0.1;
% 
% mms = Pu/R;
% MMO = [0];
% 
% for i = 1:(1- okno)*N
%    uo = u(i:i+N*okno);
%    No = size(uo,2);
%    Euo = uo*uo';
%    Puo = Euo/No;
%    mmo = Puo/R;
%    MMO = [MMO,mmo];
% end
% 
% figure;
% axis;
% line(1:N,u);
% line(okno*N:N,MMO);


%4
% N = 20;
% n = -4.2+(randn(1,N)*2.3);
% mi = sum(n)/N;
% nmmi = n - mi;
% sig2 = sum(nmmi.^2)/N;
% sig = sqrt(sig2);
% 
% figure;
% x = -15:0.01:15;
% gauss = (1/(2*pi))*exp(-0.5*x.^2);
% line(x,gauss);
% 
% kosz = 2;
% h=[];
% for j = -15:kosz:15
%     h = [h,sum(n>j&n<(j+kosz))];
% end
% j = -15:kosz:15;
% h = normalize(h, 'range', [min(gauss), max(gauss)]);
% line([j;j],[zeros(size(h));h]);


% %5
opt = detectImportOptions('wyniki.csv');
opts.dataRange = '2:';
M = readmatrix('wyniki.csv',opt);
M(:,5:end);
histogram(M(:,5:end));
title('Losowanie du¿ego lotka');
xlabel('Numer');
ylabel('Liczba wyst¹pieñ');