clc
clear

x = randi(6, 2, 10000);
x = sum(x);
histogram(x);
ylabel('liczba wynikow'); xlabel('suma oczek')
title('Rzut dwoma koscmi do gry')