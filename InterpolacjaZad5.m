clc
x = [0 , 10 , 15 , 20]%, 22.5, 30];
y = [ 0 , 227.4 , 362.8 , 517.35]%, 602.97, 901.67];
[wsp, dz] = interpolation(x,y);
sprintf("\n Wspolczynniki interpolacji \n")
t = [45, 60, 90];

xx = [1:0.02:90];
yy = polyval(wsp,xx);

clf,plot(xx,yy,'b-',x,y,'*'),grid on

disp(wsp);

T = wsp(4) + wsp(3).*(t-x(1)) + wsp(2).*(t-x(1)).*(t-x(2)) + wsp(1).*(t-x(1)).*(t-x(2)).*(t-x(3));
sprintf("\n Predkosci lotu rakiety \n")
disp(T);

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