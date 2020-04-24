global  a1
global b1
a1='1';
b1='1';
a=0; 
b=2*pi/3;
N=50;
L1=a; L2=b;
X=linspace(L1,L2,N);
Y=func1b(X);
plot(X,Y);
grid on;
xlabel('x');
ylabel('f(x)');
title('1/(a*cos(x)+b*sin(x))^2, a=1, b=1');
xr=ginput(2);
[x_m,y_m]=fminbnd(@func1b, xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*', xr(1,1), xr(1,2), 'g*', xr(2,1),xr(2,2),'g*')
hold off