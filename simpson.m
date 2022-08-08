function [wynik] = simpson(ak,a,b,N)
%funkcja ktora oblicza calke metoda Simpsona
if isempty(ak)
    error('wektor wartosci powinien zawierac przynajmniej 1 wyraz')
end
H = (b-a)/N;
wynik = 0;
suma1 = 0;
suma2 = 0;
%suma pierwsza
for i = 1:(N-1)
    suma1 = suma1 + goertzel(ak,(a+i*H));
end

for i = 0:(N-1)
    suma2 = suma2 + goertzel(ak,(a+i*H+H/2));
end

wynik = (H/6)*(goertzel(ak,a)+goertzel(ak,b)+2*suma1+4*suma2);
end

