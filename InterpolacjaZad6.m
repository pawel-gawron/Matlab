clc
x = [0, 20 , 42.5 , 52.5 , 78.1, 92, 106];
y = [0, 72 , 71 , 60 , 50, 35, 50];
[wsp, dz] = interpolation(x,y);
sprintf("\n Wspolczynniki interpolacji \n")

xx = [0:0.02:106];
yy = polyval(wsp,xx);
a = 0:0.02:50;
b = 80;
yy2 = polyval(x,y);

clf,plot(xx,yy,'b-',x,y,'*'),grid on
yline(80,'r');

disp(wsp);

function [wsp,dz] = interpolation(x, y)
    N = length(x) - 1;
    dz = zeros(N+1, N+1);
    dz(1:N+1, 1) = y';
    for k = 2 : N+1
        for i = 1 : N+2 - k
            dz(i, k) = (dz(i + 1, k - 1) - dz(i, k - 1))/(x(i + k - 1) - x(i));
        end
    end
    r = dz(1, :);
    wsp = r(N + 1);
    for k = N : -1 : 1
        wsp = [wsp r(k)] - [0 wsp * x(k)];
    end
end