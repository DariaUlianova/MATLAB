clear all
global m
m=3;
a=0; 
b=2*pi;
N=100;
X=linspace(a,b,N);
Y=func1d(X);
plot(X,Y);
ylim([0 10]);
grid on;
xlabel('x');
ylabel('f(x)');
title('sum(cos(k*x)-sin(k*x))^2');
xr2=ginput(2);
[x_m,y_m]=fminbnd(@func1d, xr2(1,1),xr2(2,1));
hold on
plot(x_m,y_m,'r*', xr2(1,1), xr2(1,2), 'g*', xr2(2,1),xr2(2,2),'g*')
hold off

