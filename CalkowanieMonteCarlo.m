clc
clear

a=0; % pocz¹tek przedzia³u ca³kowania
b=pi; % koniec przedzia³u ca³kowania
n=1000; % liczba losowañ
x=a+(b-a)*rand(1,n); % wêz³y (wylosowane)
y=x.^3+4x.^2+x+1; % funkcja ca³kowana
pole=(b-a)*sum(y)/n; % sumowanie
tekst=strcat(['calka metoda trapezow wynosi: ', num2str(pole)]);
disp(tekst);