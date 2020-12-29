clc

%prompt1 = 'Okreœl funkcjê podca³kow¹: ';
%y = input(prompt1);
%y = inline(z);
 y = sin(x);
prompt2 = 'Zakres a: ';
a = input(prompt2);
prompt3 = 'Zakres b: ';
b = input(prompt3);
% b=pi;
prompt4 = 'Ilosc probek n: ';
n = input(prompt4);
% a=0;
% b=10;
% n=100;

delta = (b-a)/n;
x = (a+delta/2):delta:(b-delta/2);
calka = delta*sum(y);

x1=a:delta:(b-delta);
x2=(a+delta):delta:b;
hold on
plot(x,y)
bar(x,y,1)
