function [wynik] = goertzel(a,t)
%funkcja obliczająca wartosc funkcji od argumentu t
n = length(a)-1;
b = zeros(1,n+2);
b(n+2) = 0;
b(n+1) = a(n+1);
% obliczamy w punkcie cost + isint
x = cos(t);
y = sin(t);
p= 2*x;
q = -(x^2+y^2);
wektor = flip(2:n);
%idziemy pętlą w dół
for i= wektor
    b(i) = a(i)+p*b(i+1)+q*b(i+2);  
end
wynik = y*b(2);
end

