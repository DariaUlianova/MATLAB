function F = func1d(x)
global m
F=0;
for k=1:1:m
        f_n=F;
        F=(cos(k.*x)-sin(k.*x)).^2+f_n;
end
end

