clear all
global alpha
alpha=2;
global betha
betha=2;
a=-1;
b=1;
N=1000;
X=linspace(a,b,N);
Y=X.^alpha.*exp(-betha.*X);
 F=@(X)X.^alpha.*exp(-betha.*X);
  plot(X,Y);
  ylim([0 1]);
  grid on;
  xr2=ginput(2);
  [x_m,y_m]=fminbnd(F, xr2(1,1),xr2(2,1));
  hold on
  plot(x_m,y_m,'r*', xr2(1,1), xr2(1,2), 'g*', xr2(2,1),xr2(2,2),'g*')
for i=1:1:5 
    if alpha ==2
        alpha=2*alpha;
        Y=X.^alpha.*exp(-betha.*X);
        F=@(X)X.^alpha.*exp(-betha.*X);
        plot(X,Y);
        ylim([0 0.2]);
        grid on;
        xr2=ginput(2);
        [x_m,y_m]=fminbnd(F, xr2(1,1),xr2(2,1));
        hold on
        plot(x_m,y_m,'r*', xr2(1,1), xr2(1,2), 'g*', xr2(2,1),xr2(2,2),'g*')
    end
    if (alpha==4) |(alpha ==8)
        alpha=4+alpha;
         Y=X.^alpha.*exp(-betha.*X);
        F=@(X)X.^alpha.*exp(-betha.*X);
        if (alpha==4)
            plot(X,Y);
        else
            plot(X,Y);
        end
         ylim([0 0.2]);
         grid on;
        xr2=ginput(2);
        [x_m,y_m]=fminbnd(F, xr2(1,1),xr2(2,1));
        hold on
        plot(x_m,y_m,'r*', xr2(1,1), xr2(1,2), 'g*', xr2(2,1),xr2(2,2),'g*')
    end
    if  alpha ==12
        alpha =12+6;
        Y=X.^alpha.*exp(-betha.*X);
        F=@(X)X.^alpha.*exp(-betha.*X);
        plot(X,Y);
       ylim([0 0.2]);
        grid on;
        xr2=ginput(2);
        [x_m,y_m]=fminbnd(F, xr2(1,1),xr2(2,1));
        hold on
        plot(x_m,y_m,'r*', xr2(1,1), xr2(1,2), 'g*', xr2(2,1),xr2(2,2),'g*')
    end
end
xlabel('x');
ylabel('f(x)');
title('X.^alpha.*exp(-betha.*X)');

        

