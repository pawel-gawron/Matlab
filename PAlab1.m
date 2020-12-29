close all
clc
clear

% %2.1
% b_dziel = 10;
% m1 = 0.004;
% c_aux = 15;
% dzielnik = 7.0064;
% 
% Y = ceil(m1+10.45);
% S = sin(Y/dzielnik);
% c_aux = exp(1);
% E = (log(c_aux))^3;
% Z = mod(b_dziel, dzielnik);
% 
% %3.1
M_A = [1 30 17 5 10 25; 5 9 4 11 8 3; 13 14 1 7 37 19];

% %3.2
M_B = eye(3);
M_C = zeros(3);
M_D = diag([7 8 9]);
M_E = magic(3);

%3.3
M_F = rand(3,3);
% 
%3.4
M_G = [1:2:11];
M_H = [0:-3:-15; 4.2:0.1:4.7; 2.5:1.5:10];

% %3.5
M_AB = [M_A, M_B];
M_CD = [M_C; M_D];
M_DEG = blkdiag(M_D, M_E, M_G);
% 
% %3.6
M3_2 = [1:2:11; 2:2:12; 13:1:18];
W3_2 = [20 -3 45 19 -12 25];
% 
% %3.7
[x, y] = find(M3_2==10);
z = M3_2(3, 5);
X = M3_2(:, 1:2);
Y = M3_2(1:2:3, 2:3);
Z = M3_2(:, 2:end);
V = M3_2 > 9;
% 
% %3.8
% x = numel(M3_2);
% [a, b] = size(M3_2);
% n = length(W3_2);
% m = length(M3_2);
% d = ndims(M3_2);
% 
% %3.9
% A = [2 -1 0; -1 2 -1; 0 -1 2];
% B = [1 2 3; 2 3 2; 3 1 3];
% C = [-5 3 9];
% D = [2 6 8];
% 
%3.10
% ApB = A+B;
% AmB = A-B;
% At = A';
% Ai = inv(A);
% Aii = A^-1;
% AtB = A*B;
% AdrB = A./B
% AdlB = A.\B
% As = A^2;
% 
% %3.11
% CsD = dot(C, D);
% CwD = cross(C, D);
% 
% %3.12
% Sk = sum(A);
% Sw = sum(A,2);
% Sa = sum(A, 'all');
% 
% %3.13
% AtB = A.*B;
% AdrB = A./B;
% AdlB = A.\B;
% A3 = A.^3;
% B10 = B.*10;
% X = sin(A);
% Y = cos(B);
% Z = mod(A, B);
% U = rem(A, B);
% 
% %4.1
% napis1 = 'Koniec rozdzialu 4';
% napis2 = 'Koniec zajec';
% napis3 = '10';
% napis4 = 'log(10)';
% 
% %4.2
% letter = isletter(napis1);
% space = isspace(napis1);
% 
% %4.3
% compare = strncmp(napis1, napis2, 5);
% 
% %4.4
% napis5 = input('Podaj dowolna liczbe w zakresie 1-10: ', 's');
% compare2 = strcmp(napis3, napis5);
% 
% %4.5
% lo = eval(napis4)
% number = str2num(napis4)