disp('-------Przyklad_1--------')
an = [1 2 3 4 5 6 7 8 9];
a=0;
b=10;
tic
metodasimpsona = simpson(an,a,b,1000)
czas_simpsona = toc;
tic
wynikmatlabowy = calkamatlab(an,a,b)
czas_matlaba = toc;
czas_simpsona
czas_matlaba
blad = norm(metodasimpsona-wynikmatlabowy)

disp('-------Przyklad_2--------')
an = [7 548 5 4 3 9 459 58 4 37 475 85 9 59 3 47 6 8 37 4 7 9 7 5];
a=5;
b=1000;
tic
metodasimpsona = simpson(an,a,b,50000)
czas_simpsona = toc;
tic
wynikmatlabowy = calkamatlab(an,a,b)
czas_matlaba = toc;
czas_simpsona
czas_matlaba
blad = norm(metodasimpsona-wynikmatlabowy)
disp('-------Przyklad_3--------')
an= [1 3+5j 3 1-7j];
a=-5;
b=0;
tic
metodasimpsona = simpson(an,a,b,1000)
czas_simpsona = toc;
tic
wynikmatlabowy = calkamatlab(an,a,b)
czas_matlaba = toc;
czas_simpsona
czas_matlaba
blad = norm(metodasimpsona-wynikmatlabowy)



disp('-------Przyklad_4--------')
an = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
a=0;
b=10;
tic
metodasimpsona = simpson(an,a,b,1000)
czas_simpsona = toc;
tic
wynikmatlabowy = calkamatlab(an,a,b)
czas_matlaba = toc;
czas_simpsona
czas_matlaba
blad = norm(metodasimpsona-wynikmatlabowy)