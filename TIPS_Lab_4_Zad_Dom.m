clear all

% %Zad.1
% ts=0.01;
% f0=2;
% x=load ('sawtooth.dat');
% N=length(x);
% TF=0:ts:(N-1)*ts;
% 
% X=fft(x);
% kv=0:N-1;
% fv=kv/(N*ts);
% 
% subplot(2,1,1);
% plot(fv,real(X));
% 
% subplot(2,1,2);
% plot(fv,imag(X));
% 
% a0s=mean(x);
% xr=a0s*ones(1,N);
% 
% for ks=1:25
%     f=f0*ks;
%     k=f*N*ts;
%     cks=X(k+1)/N;
%     aks=2*real(cks);
%     bks=-2*imag(cks);
%     xr=xr+bks*sin(2*pi*f*TF)+aks*cos(2*pi*f*TF);
% end
% 
% % plot(TF,xr);
% % hold on;
% % plot(TF,x);

%Zad.2

ts=1/20;
f=2;
T=2;
t=0:ts:T-ts;
A=1;
%A=1, N=20, |X|=20
%A=2, N=20, |X|=40
%A=3, N=20, |X|=60 ziwekszajac amplitude zaleznosc liniowa
%A=1, N=80, |X|=40
%A=1, N=120, |X|=60
%|X|=A*N/2
phi=0.0*pi;
%phi=0, arg X=0
%phi=0.1*pi, arg X=0.314
%phi=0.5*pi, arg X=1.57
%phi=-0.5, arg X=-1.57
x=A*cos(2*pi*f*t+phi);
N=length(x);

X=fft(x);
mod=abs(X);
ang=angle(X);
ang(2*mod/N<0.001)=0;

k=0:N-1;
fv=k/(N*ts);

figure(1);
plot(t,x);

figure(2);
subplot(2,1,1);
plot(fv,2*mod/N);

subplot(2,1,2);
plot(fv,ang);