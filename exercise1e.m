clear all
global m
global d
m=4;
a=0; 
b=2*pi;
d=[3 5 2 -1];
N=100;
X=linspace(a,b,N);
Y=(d(1)-sin(X)).^2+(d(2)-sin(2.*X)).^2+(d(3)-sin(3.*X)).^2+(d(4)-sin(4.*X)).^2;
F=@(X)(d(1)-sin(X)).^2+(d(2)-sin(2.*X)).^2+(d(3)-sin(3.*X)).^2+(d(4)-sin(4.*X)).^2;
plot(X,Y);
ylim([20 60]);
xlim([0 7]);
grid on;
xlabel('x');
ylabel('f(x)');
title('sum(d(k)-sin(k*x))^2');
xr2=ginput(2);
[x_m,y_m]=fminbnd(F, xr2(1,1),xr2(2,1));
hold on
plot(x_m,y_m,'r*', xr2(1,1), xr2(1,2), 'g*', xr2(2,1),xr2(2,2),'g*')
hold off
