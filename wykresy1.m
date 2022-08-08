an = [7 548 5 4 3 9 459 58 4 37 475 85 9 59 3 47 6 8 37 4 7 9 7 5];
a=5;
b=1000;
x=1:40000;
y=1:40000;
wynikmatlabowy = calkamatlab(an,a,b)
for i=x
    y(i) = simpson(an,a,b,x(i));
    y(i) = norm(y(i)-wynikmatlabowy);
end
figure
semilogy(x,y)
title('Wpływ ilości podziału przedziału całkowania na błąd')
xlabel('Ilość podziałów przedziału całkowania')
ylabel('błąd')