close all
clc
clear

% %2.2
% licznik = [10];
% mianownik = [1];
% transmitancja_obiektu = tf(licznik, mianownik);
% figure()
% subplot(1,2,1)
% step(transmitancja_obiektu);
% hold on;
% subplot(1,2,2)
% impulse(transmitancja_obiektu);

% %2.3
% licznik = [1];
% mianownik = [10 1];
% transmitancja_obiektu = tf(licznik, mianownik);
% step(transmitancja_obiektu);
% hold on
% impulse(transmitancja_obiektu);
% hold on

% %2.4
% k = 1;
% T = 1;
% s = tf('s');
% transmitancja_obiektu = k/((s*T+1)^2);
% transmitancja_obiektu10 = k/((s*10+1)^2);
% transmitancja_obiektu100 = k/((s*20+1)^2);
% figure()
% 
% % subplot(1,2,1)
% step(transmitancja_obiektu);
% hold on;
% step(transmitancja_obiektu10);
% step(transmitancja_obiektu100);
% 
% % subplot(1,2,2)
% % impulse(transmitancja_obiektu);

% %2.5
% k = 2;
% T = 3;
% E= 0;
% s = tf('s');
% transmitancja_obiektu = k/((s^2)*(T^2)+2*E*T*s+1);
% figure()
% subplot(1,2,1)
% step(transmitancja_obiektu);
% hold on;
% subplot(1,2,2)
% impulse(transmitancja_obiektu);

%2.6
% k = 1;
% T = 1;
% s = tf('s');
% 
% for i=1:2:9
% transmitancja_obiektu = k/((s*T+1)^i);
% [x,y]=step(transmitancja_obiektu);
% [z,v]=impulse(transmitancja_obiektu);
% legenda=['Wykresy zale¿ne od n=' num2str(i)];
% subplot(1,2,1);
% plot(y,x,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% xlabel('t', 'FontSize', 20);
% ylabel('h(t)', 'FontSize', 20);
% title('OdpowiedŸ skokowa obiektu inercyjnego n-tego rzêdu dla k=1, T=1');
% hold on;
% subplot(1,2,2);
% plot(v,z,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% hold on;
% xlabel('t', 'FontSize', 20);
% ylabel('g(t)', 'FontSize', 20);
% title('OdpowiedŸ impulsowa obiektu inercyjnego n-tego rzêdu dla k=1, T=1');
% end
% legend show;
% 
% subplot(1,2,1);
% zy=[0 1];
% zx=[0 1];
% plot(zy,zx, '--', 'Linewidth',2, 'color','k');
% hold on
% 
% subplot(1,2,2);
% zy=[1 0];
% zx=[0 1];
% plot(zy,zx, '--', 'Linewidth',2, 'color','k');


% for i=1:2:9
% transmitancja_obiektu = k/((s*i+1)^4);
% [x,y]=step(transmitancja_obiektu);
% [z,v]=impulse(transmitancja_obiektu);
% legenda=['Wykresy zale¿ne od T=' num2str(i)];
% subplot(1,2,1);
% plot(y,x,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% xlabel('t', 'FontSize', 20);
% ylabel('h(t)', 'FontSize', 20);
% title('OdpowiedŸ skokowa obiektu inercyjnego IV-ego rzêdu dla k=1');
% hold on;
% subplot(1,2,2);
% plot(v,z,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% hold on;
% xlabel('t', 'FontSize', 20);
% ylabel('g(t)', 'FontSize', 20);
% title('OdpowiedŸ impulsowa obiektu inercyjnego IV-ego rzêdu dla k=1');
% end
% legend show;

% for i=1:2:9
% transmitancja_obiektu = i/((s*T+1)^4);
% [x,y]=step(transmitancja_obiektu);
% [z,v]=impulse(transmitancja_obiektu);
% legenda=['Wykresy zale¿ne od k=' num2str(i)];
% subplot(1,2,1);
% plot(y,x,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% xlabel('t', 'FontSize', 20);
% ylabel('h(t)', 'FontSize', 20);
% title('OdpowiedŸ skokowa obiektu inercyjnego IV-ego rzêdu dla T=1');
% hold on;
% subplot(1,2,2);
% plot(v,z,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% hold on;
% xlabel('t', 'FontSize', 20);
% ylabel('g(t)', 'FontSize', 20);
% title('OdpowiedŸ impulsowa obiektu inercyjnego IV-ego rzêdu dla T=1');
% end
% legend show;
% % 


% for i=1:2:9
% color={'blue', 'red','yellow','red','green','red','purple','red','red'};
% subplot(1,2,1);
% zy=[i i];
% zx=[0 0];
% hold on
% plot(i,i, '--', 'Linewidth',5);
% end

% %2.7
% licznik = [1];
% mianownik = [1 0];
% transmitancja_obiektu = tf(licznik, mianownik);
% figure()
% subplot(1,2,1)
% step(transmitancja_obiektu);
% hold on;
% subplot(1,2,2)
% impulse(transmitancja_obiektu);

%2.8

% k = 1;
% T = 1;
% s = tf('s');

% for i=1:2:9
% transmitancja_obiektu = i/(s*(s*T+1));
% [x,y]=step(transmitancja_obiektu,8);
% [z,v]=impulse(transmitancja_obiektu);
% legenda=['Wykresy zale¿ne od k=' num2str(i)];
% subplot(1,2,1);
% plot(y,x,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% xlabel('t', 'FontSize', 20);
% ylabel('h(t)', 'FontSize', 20);
% title('OdpowiedŸ skokowa obiektu ca³kuj¹cego rzeczywistego dla T=1');
% hold on;
% subplot(1,2,2);
% plot(v,z,'DisplayName',legenda, 'Linewidth',4);
% 
% set(gca,'FontSize',17);
% hold on;
% 
% 
% xlabel('t', 'FontSize', 20);
% ylabel('g(t)', 'FontSize', 20);
% title('OdpowiedŸ impulsowa obiektu ca³kuj¹cego rzeczywistego dla T=1');
% end
% % legend show;
% 
% for i=1:2:9
% subplot(1,2,2)
% yline(i);
% zy=[0 1];
% zx=[0 i];
% plot(zy,zx, '--', 'Linewidth',2, 'color','k');
% hold on
% end

% for i=1:2:9
% transmitancja_obiektu = k/(s*(s*i+1));
% [x,y]=step(transmitancja_obiektu,25);
% [z,v]=impulse(transmitancja_obiektu);
% legenda=['Wykresy zale¿ne od T=' num2str(i)];
% subplot(1,2,1);
% plot(y,x,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% xlabel('t', 'FontSize', 20);
% ylabel('h(t)', 'FontSize', 20);
% title('OdpowiedŸ skokowa obiektu ca³kuj¹cego rzeczywistego dla k=1');
% hold on;
% subplot(1,2,2);
% plot(v,z,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% hold on;
% 
% xlabel('t', 'FontSize', 20);
% ylabel('g(t)', 'FontSize', 20);
% title('OdpowiedŸ impulsowa obiektu ca³kuj¹cego rzeczywistego dla k=1');
% end
% legend show;
% 
% subplot(1,2,1);
% zy=[1 8];
% zx=[0 7];
% hold on
% plot(zy,zx, '--', 'Linewidth',2, 'color', 'k')

%2.9
% k = 1;
% T = 1;
% s = tf('s');

% for i=1:2:9
% transmitancja_obiektu = i*s/(s*T+1);
% [x,y]=step(transmitancja_obiektu);
% [z,v]=impulse(transmitancja_obiektu);
% legenda=['Wykresy zale¿ne od k=' num2str(i)];
% subplot(1,2,1);
% plot(y,x,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% xlabel('t', 'FontSize', 20);
% ylabel('h(t)', 'FontSize', 20);
% title('OdpowiedŸ skokowa obiektu ró¿niczkuj¹cego rzeczywistego dla T=1');
% hold on;
% subplot(1,2,2);
% plot(v,z,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% hold on;
% xlabel('t', 'FontSize', 20);
% ylabel('g(t)', 'FontSize', 20);
% title('OdpowiedŸ impulsowa obiektu ró¿niczkuj¹cego rzeczywistego dla T=1');
% end
% legend show;

% for i=3:2:11
% transmitancja_obiektu = k*s/(s*i+1);
% [x,y]=step(transmitancja_obiektu);
% [z,v]=impulse(transmitancja_obiektu);
% legenda=['Wykresy zale¿ne od T=' num2str(i)];
% subplot(1,2,1);
% plot(y,x,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% xlabel('t', 'FontSize', 20);
% ylabel('h(t)', 'FontSize', 20);
% title('OdpowiedŸ skokowa obiektu ró¿niczkuj¹cego rzeczywistego dla k=1');
% hold on;
% subplot(1,2,2);
% plot(v,z,'DisplayName',legenda, 'Linewidth',4);
% set(gca,'FontSize',17);
% hold on;
% xlabel('t', 'FontSize', 20);
% ylabel('g(t)', 'FontSize', 20);
% title('OdpowiedŸ impulsowa obiektu ró¿niczkuj¹cego rzeczywistego dla k=1');
% end
% legend show;

%3.1
k = 4;
T1 = 4;
s = tf('s');
transmitancja_obiektu = k/((s*T1+1)^4);
[y1, t1] = step(transmitancja_obiektu);
[y2, t2] = impulse(transmitancja_obiektu);
plot(t1,y1, 'Linewidth',5);

hold on;
[max_y2, index_y] = max(y2);

a=max_y2;
b=y1(index_y)-a*t1(index_y);
b2=b-k;

T0=-(b/a);
T=(-(b2)/a)-T0;

aproksymacja_transmitancja_obiektu = tf([k], [T 1], 'OutputDelay', T0);
[y, t] = step(aproksymacja_transmitancja_obiektu);
plot(t,y, 'Linewidth',5);

hold on;

Ax=t1(index_y);
Ay=y1(index_y);

x = T0:0.01:T0+T;
fun = a*x+b;
plot(x, fun, 'Linewidth',5);
hold on

plot(T0, 0, 'o-','MarkerFaceColor','red','MarkerEdgeColor','red', 'Linewidth',5);
plot(T0+T, k, 'o-','MarkerFaceColor','red','MarkerEdgeColor','red', 'Linewidth',5);
plot(Ax, Ay, 'o-','MarkerFaceColor','red','MarkerEdgeColor','red', 'Linewidth',5);
xline(T0);
text(T0+2,0.15,'C','Color','red','FontSize',22)
text(Ax+2,Ay,'A','Color','red','FontSize',22)
text(T0+T+1,k-0.15,'B','Color','red','FontSize',22)

set(gca,'FontSize',22);
legend('Transmitancja obiektu IV-tego rzêdu','Aproksymacja transmitancji obiektu IV-tego rzêdu', 'Styczna BC','FontSize', 20);
title('Odpowiedzi skokowe','FontSize', 22);
xlabel('Czas(s)','FontSize', 22);
ylabel('Amplituda','FontSize', 22);

% n=4;
% [del_l,del_m] = pade(T, n);
% [licz_d,mian_d] = series(del_l, del_m, [k], [T 1]);
% step(licz_d, mian_d)
% hold on
% 
% trans_opoznienie = exp(-s*11);
% trans_inercja = k/(s*T+1);
% trans_approx = series(trans_inercja,trans_opoznienie);
% step(trans_approx)


% plot(out.original);
% hold on;
% plot(out.approximation);
% 
% figure()
% subplot(1,2,1)
% plot(out.original);
% hold on;
% subplot(1,2,2)
% plot(out.approximation);