clear all

%2.2
% for i=1:9
% transmitancja_obiektu = tf(i,1);
% % bode(transmitancja_obiektu);
% nyquist(transmitancja_obiektu);
% hold on;
% end

%2.3
% k=1;
% T=1;
% 
% for i=1:1:9
% transmitancja_obiektu = tf(k, [i 1]);
% subplot(1,2,1);
% bode(transmitancja_obiektu);
% hold on;
% subplot(1,2,2);
% nyquist(transmitancja_obiektu);
% hold on;
% end

% transmitancja_obiektu = tf(2, [4 1]);
% figure()
% bode(transmitancja_obiektu);
% figure()
% nyquist(transmitancja_obiektu);

s = tf('s');
transmitancja_obiektu = (4*s)/(2*s+1);
figure()
bode(transmitancja_obiektu);
figure()
nyquist(transmitancja_obiektu);

%2.4
% k = 1;
% T = 1;
% s = tf('s');
% 
% for i=1:2:9
% transmitancja_obiektu = k/((s*T+1)^i);
% % bode(transmitancja_obiektu);
% hold on;
% nyquist(transmitancja_obiektu);
% hold on;
% end

%2.5
% k = 2;
% T = 3;
% E= 0.1;
% s = tf('s');
% 
% for i=1:1:9
% transmitancja_obiektu = i/((s^2)*(T^2)+2*E*T*s+1);
% % bode(transmitancja_obiektu);
% hold on;
% nyquist(transmitancja_obiektu);
% hold on;
% end

%2.6
% k = 1;
% T = 1;
% s = tf('s');
% 
% for i=1:2:9
% transmitancja_obiektu = i/((s*T+1)^5);
% % bode(transmitancja_obiektu);
% hold on;
% nyquist(transmitancja_obiektu);
% hold on;
% end

%2.7
% k=1;
% T=1;
% 
% for i=1:1:9
% transmitancja_obiektu = tf(k, [i 0]);
% bode(transmitancja_obiektu);
% hold on;
% % nyquist(transmitancja_obiektu);
% hold on;
% end

%2.8
% k = 1;
% T = 1;
% s = tf('s');
% 
% for i=1:2:9
% transmitancja_obiektu = i/(s*(s*T+1));
% bode(transmitancja_obiektu);
% hold on;
% % nyquist(transmitancja_obiektu);
% hold on;
% end

%2.9
% k = 1;
% T = 1;
% s = tf('s');
% 
% for i=1:2:9
% transmitancja_obiektu = (s*i)/((s*T+1));
% bode(transmitancja_obiektu);
% hold on;
% % nyquist(transmitancja_obiektu);
% hold on;
% % legenda=['Wykresy zale¿ne od T=' num2str(i)];
% % legend(legenda);
% end

%3.1
% s = tf('s');
% transmitancja_obiektu = (3*s)/((6*s+1));
% w=logspace(-2,1);
% [re, im]=nyquist(transmitancja_obiektu, w);
% re2=reshape(re,size(w));
% im2=reshape(im,size(w));
% 
% [mag, phase] = bode(transmitancja_obiektu);
% mag_dB=20*log10(sqrt(re.^2+im.^2));
% 
% mag_dB2=reshape(mag_dB, size(w));
% semilogx(w, mag_dB2, 'o','color', 'r');
% hold on;
% bode(transmitancja_obiektu);
