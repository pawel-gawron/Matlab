clear all

yH = [4.35, 4.83, 4.93, 4.96, 5];
xH = [86.97, 24.13, 9.86, 4.96, 99.99*10^(-3)];

plot(xH, yH, 'Linewidth',4);
hold on;

yL = [210.61*10^(-3), 54.63*10^(-3), 22.02*10^(-3), 11.04*10^(-3),221.5*10^(-6)];
xL = [93.91, 24.6, 9.94, 4.98, 99.99*10^(-3)];

plot(xL, yL, 'Linewidth',4);
legend('VoutH = f(IoutH)', 'VoutL = f(IoutL)','FontSize', 20);
xlabel('Iout');
ylabel('Vout');
title('Charakterystyki wyjœciowe Vout = f(Iout)');
set(gca,'FontSize',17);
axis tight;
