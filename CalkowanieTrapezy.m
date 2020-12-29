clc

%prompt1 = 'Okreœl funkcjê podca³kow¹: ';
%y = input(prompt1);
%y = inline(z);
y = sin(x);
prompt2 = 'Zakres a: ';
a = input(prompt2);
prompt3 = 'Zakres b: ';
b = input(prompt3);
prompt4 = 'Ilosc probek n: ';
n = input(prompt4);
% a=0;
% b=10;
% n=100;

delta = (b-a)/n;
x = a:delta:b;
calka = delta*(sum(y(2:n))+(y(1)+y(n+1))/2);