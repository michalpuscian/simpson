function [cal] = calkamatlab(ak,a,b)
cal = 0;
for i = 1:length(ak)
    f = @(x) ak(i)*sin((i-1)*x);
     cal =cal + integral(f,a,b);
end

end

