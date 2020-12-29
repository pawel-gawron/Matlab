k1=2;
k2=2;
T11=4;
T12=5;
T21=5;
T22=5;

s=tf('s');

%dwuinercyjny
obiekt_dwu=k1/((s*T11+1)*(s*T12+1));

%trzeciego rzedu z biegunem zerowym
obiekt_trzy=k2/(s*(s*T21+1)*(s*T22+1));

dwu = pole(obiekt_dwu);
trzy = pole(obiekt_trzy);

kp=2;
Ti=1;
kp1 = 0.3125;
Ti1 =5;

kp2 = 0.2;
Ti2 = 4;

kp3 = 10;
Ti3 = 30;