clc

x = [1 , 2 , 4.5 , 5];
y = [ -10.5 , -16, 11.8125, 27.5];
[wsp, dz] = interpolation(x,y);

xa = [-2:0.02:5];
ya = polyval(wsp, xa);
clf,plot(xa, ya, 'b-', x, y, '*'), grid on

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