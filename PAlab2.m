% %1.3, 1.4, 1.5, 1.6
% function y = PAlab2(sumator1, sumator2)
% %Dzielenie sumy dwoch argumentow przez 2
% global DZIELNIK;
% y = (sumator1+sumator2)/DZIELNIK;
% end

%1.7, 1.8, 1.9
% function x = PAlab2(pierwszy, drugi)
% % x = (pierwszy==drugi) %&& (drugi==pierwszy);
% x = (pierwszy==3)&&(drugi==3);
% end

close all
clc
clear

%1.10, 1.11, 1.12, 1.13
% A = [6 6 6 6 6; 6 6 4 8 6; 9 10 11 12 6 ; 13 14 15 16 6];
% [size, value] = macierz(A)

% function [rozmiar, wartosc]= macierz(A)
% if size(A) == [4 5]
%     rozmiar = 1;
% else
%     rozmiar = 0;
% end
% 
% if A > 5
%     wartosc = 1;
% else
%     wartosc = 0;
% end
% end
%
% dzialanie('dodawanie');
% dzialanie('odejmowanie');
% dzialanie('mnozenie');
% dzialanie('dzielenie');
% function dzialanie(string)


% 
% switch string
%     case 'dodawanie'
%         disp('+');
%     case 'odejmowanie'
%         disp('-');
%     case 'mnozenie'
%         disp('*');
%     case 'dzielenie'
%         disp('/');
% end
% end
% 
% X = [1 3 6; 1 6 5; 5 6 6];
% a = matrix(X);
% 
% function quanity = matrix(A)
% [z, y] = size(A);
% quanity=0;
% for i = 1:1:z
%     for j = 1:1:y
%        if A(i, j)>4 && A(i, j)<7
%            quanity=quanity+1;
%        end
%        if quanity == 5
%            break
%        end
%     end
% end
% end

%2.1, 2.2, 2.3
% t = 0:0.01:10;
% x1=sin(t);
% x2=cos(t);
% p1 = plot(t,x1,t,x2);
% set(gcf, 'color', [0.3,0.3,0.3]);
% set(p1, 'LineStyle', ':');

% %2.4, 2.5, 2.6
% v1 = [1:1:10];
% v2 = [2:1:11];
% v3 = [3:1:12];
% v4 = [4:1:13];
% v5 = [5:1:14];
% 
% subplot(3,2,1);
% plot(v1);
% ylabel('Wartosc wektora');
% subplot(3,2,2);
% plot(v2, 'g');
% ylabel('Wartosc wektora');
% subplot(3,2,3);
% plot(v3, 'g');
% ylabel('Wartosc wektora');
% subplot(3,2,4);
% plot(v4);
% ylabel('Wartosc wektora');
% subplot(3,2,5:6);
% plot(v5);
% ylabel('Wartosc wektora');

%2.7, 2.8
% t=0:pi/50:10*pi;
% z = 2:1:3;
% plot3(sin(t), cos(t), t);
% grid on;
% x = magic(501);
% surf(sin(t), cos(t), x);