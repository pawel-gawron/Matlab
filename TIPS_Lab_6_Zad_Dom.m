clear all

%Zad 1
x=load ('noiseSig.dat');
N=9;
sigma=1.33;
alpha=(N-1)/(2*sigma);
t=0.001;

y=gausswin(N,alpha);
z=conv(x,y);
N1=length(x);
N2=length(y);
N3=length(z);

figure(1);
subplot(3,1,1);plot(x);
subplot(3,1,2);plot(y);
subplot(3,1,3);plot(z);

X=fft(x);
mod1=abs(X);
k1=0:N1-1;
fv1=k1/(N1*t);

Y=fft(y);
mod2=abs(Y);
k2=0:N2-1;
fv2=k2/(N2*t);

Z=fft(z);
mod3=abs(Z);
k3=0:N3-1;
fv3=k3/(N3*t);

figure(2);
subplot(3,1,1);plot(fv1,2*mod1/N1);
subplot(3,1,2);plot(fv2,2*mod2/N2);
subplot(3,1,3);plot(fv3,2*mod3/N3);

%Zad 2
% a=randi([-4 4],1,4);
% b=randi([-5 5],1,4);
% N=length(a);
% M=length(b);
% S=N+M-1;
% ab=ifft(fft(a,S).*fft(b,S));
