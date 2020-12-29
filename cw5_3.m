close all, clc, clear all
% Parulski

s = tf('s');

% 3.1
g = 3*s / (6*s +1)

% 3.2
w = logspace(-2,1);

% 3.3
[re im] = nyquist(g,w);


% 3.4
re_2 = reshape(re,size(w));
im_2 = reshape(im,size(w));

% 3.5
A = sqrt(re_2.^2 + im_2.^2);
Lm = 20*log10(A);

% 3.6-3.7
figure(1)

semilogx(w(1,:),Lm(1,:),'ro')
hold on
% box on
bode(g)


return
