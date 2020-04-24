clear all
a=0; 
b=4;
N=100;
X=linspace(a,b,N);
Y=func1c(X);
plot(X,Y);
ylim([0 2]);
grid on;
xlabel('x');
ylabel('f(x)');
title('F=2-abs(x)*exp(-abs(x-1))');
xr2=ginput(2);
[x_m,y_m]=fminbnd(@func1c, xr2(1,1),xr2(2,1));
hold on
plot(x_m,y_m,'r*', xr2(1,1), xr2(1,2), 'g*', xr2(2,1),xr2(2,2),'g*')
hold off

