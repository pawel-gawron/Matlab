close all
clc
clear

n = input('Wprowadz liczbe (1-sinus oraz szum, 2-normalizacja): ');

switch n
    
    case 1
f1 = figure;
a1 = axes;
axis([0 5 -3 3]);
a = 0:4*pi/40:16*pi; %wykorzystuj¹c dane z zadania powinno byæ 0:4*pi/200:16*pi lecz dla czytelniejszego wykresu zosta³o to zmienione
s1 = 2.5*sin(a);
a = a/(pi*4);
stem(a, s1, 'r.');

hold on

dlugosc_sygnalu = length(s1);
szum_s1 = s1 + 0.1* randn(1,dlugosc_sygnalu);
plot(a,szum_s1, 'b')

xlabel('czas');
ylabel('amplituda');
title('wykres sinusoidalny');
text(0,0,'Ala ma kota kot ma Ale');

    case 2
loaded = load ('sygnal.dat');
fun = normalizacja(loaded);
save('sygnal_standaryzacja.dat', 'fun');

     otherwise
         disp('zly wybor')
end
 
function [stand_1] = normalizacja(loaded)
stand_1 = rescale((loaded - mean(loaded))/std(loaded), -1, 1);
stand_2 = normalize(loaded, 'range', [-1 1]);
t = 1:length(loaded);
plot(t, loaded);
hold on;
plot(t, stand_1);
plot(t, stand_2);
end
