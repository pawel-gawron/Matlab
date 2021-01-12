close all;
clear all;

% wczytywanie danych
x = load('sygnalDtmf.dat');

% parametry sygnalu
fs = 4096;
ts = 1/fs;
N=length(x);
% wektor czasu
t = (0 : length(x) - 1) * ts;
% wyswietlanie sygnalu
plot(t, x);

%dlugosc okna
Nw=2048;

% ------------------------------------
% miejsce na dodatkowe zmienne
% N=length(x);
% delta_fs=fs/N;
%tablica ze wszystkii przyciskami
buttons=['1', '2', '3', 'A';
    '4', '5', '6', 'B';
    '7', '8', '9', 'C';
    '*', '0', '#', 'D'];
%wektor z nizszymi czestotliwosciami
fLow=[697, 770, 852, 941];
%wektor z wyzszymi czestotliwosciami
fHigh=[1209, 1336, 1477, 1633];

% koniec
% ------------------------------------
ff=zeros(length(x) - Nw + 1,10);
% dlugosc okna - prosze dobrac optymalna wartosc
Nw = 2048;
delta_fsw=fs/Nw;
przylozen=length(x) - Nw + 1;

% przesuwajace sie okno o dlugosci Nw
for i = 1 : length(x) - Nw + 1
    % aktualnie rozpatrywany wycinek sygnalu
    curx = x(i : i + Nw - 1);
    Ft=fft(curx);
        
    Ft=Ft(1:0.5*size(Ft,2));
    mod=2*abs(Ft)/Nw;
    %k=N*ts
    [pks,local]=findpeaks(mod,delta_fsw);
    local(pks<0.4)=0;
    ff(i,1:length(local))=local;
    
    % ------------------------------------
    % tutaj powinien sie znalezc kod rozpoznajacy przycisk
    
    
    % koniec
    % ------------------------------------
end
figure
line((1:przylozen)'*ts, ff(:,1:10));


















% close all;
% clear all;
% 
% % wczytywanie danych
% x = load('sygnalDtmf.dat');
% 
% % parametry sygnalu
% ft = 2048;
% fs = 4096; %czestotliwoœæ próbkowania, dwukrotnie wiêksza od czeœtotliwoœci sygna³u ( 2048Hz)
% ts = 1/fs;
% 
% 
% % wektor czasu
% t = (0 : length(x) - 1) * ts;
% % wyswietlanie sygnalu
% plot(t, x);
% 
% % ------------------------------------
% % miejsce na dodatkowe zmienne 
% %musimy okreœliæ iloœæ N próbek, fs/N to rozdzielczoœæ. Szukana
% %czestotliwoœæ sk³adowa sygna³u powinnna byæ wielokrotnoœci¹ tej
% %rozdzielczoœci.
% N = 2048; %przy tej ilosci próbek rozdzielczoœæ fs/N = 2, tym samym okno bêdzie mia³o szerokoœæ 2Hz
% 
% %tablica ze wszystkii przyciskami
% 
% buttons=['1', '2', '3';
%     '4', '5', '6';
%     '7', '8', '9';
%     '*', '0', '#'];
% 
% 
% 
% 
% %wektory czestotliwosci
% 
% %wektor z nizszymi czestotliwosciami
% fLow=[697, 770, 852, 941];
% %wektor z wyzszymi czestotliwosciami
% fHigh=[1209, 1336, 1477];
% 
% 
% found = [];
% pressed = [];
% frame =2*N;
% 
% %poni¿sza pêtla wykonuje algorytm Goertzla dla ka¿dego okna czasowego,
% %znajduje czêstotliwoœci niskie i wysokie o najwiêkszej mocy, dobieraj¹c je
% %w pary umieszcza je w dwuwierszowej macierzy found, która nastêpnie s³u¿y
% %do odnalezienia odpowiadaj¹cych tym czêstotliwoœciom klawiszom
% for z = 1:frame:length(x)-frame
% %     disp(z);
% %     disp(z/(3*N));
%     
%     x1 = x(z : z+frame);
%     
%     N = (length(x1)+1)/2;
%     f = (fs/2)/N*(0:N-1);
%  %     ----------------------------------------------------   
%     %niskie czestotliwosci
%     indxs = find(f>690 & f<950);
%     X = goertzel(x1,indxs);
% 
% %     figure()
% %     plot(f(indxs),mag2db(abs(X)/length(X)))
% 
%     a = f(indxs); %wektor dla niskich czestotliwosci
%     magg = mag2db(abs(X)/length(X));
%     [~, i] = max(magg);
%     disp(a(i))
% %     ----------------------------------------------------
% 
% 
% 
%     %wysokie czestotliwosci
%     indxs = find(f>1200 & f<1500);
%     X = goertzel(x1,indxs);
%     
%     b = f(indxs); %wektor dla wysokich czestotliwosci
%     magg = mag2db(abs(X)/length(X));
%     [z, j] = max(magg);
%     disp(b(j)) 
% %     ----------------------------------------------------
% 
% 
%     %czestotliwosci znalezione
%     
%     found = [found [ceil(a(i)); ceil(b(j))]];
%     
%     %nacisniety klawisz dodajemy do wektora wszystkich poprzednio
%     %nacisniêtych klawiszy
%     pressed = [pressed buttons(fLow == found(1,end), fHigh == found(2, end))];
%     %w tym warunku logicznym pressed buttons to macierz klawiszy,
%     %jej wiersze opisuj¹ czêstotliwoœci niskie, a kolumny czêstotliwoœci
%     %wyoskie
% end