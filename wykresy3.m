an = [];
wynikmatlabowy=[];
a=5;
b=50;
x=1:100;
y=1:100;
for i=x
    an(i)=1;
    y(i) = simpson(an,a,b,5000);
    wynikmatlabowy = calkamatlab(an,a,b);
    y(i) = norm(y(i)-wynikmatlabowy);
end
figure
semilogy(x,y)
title('Wpływ długości wektora współczynników na błąd')
xlabel('ilość współczynników')
ylabel('błąd')