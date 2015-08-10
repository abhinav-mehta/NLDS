
mu = [1.5, 2, 2,];
xo = [3/5 6/13 1/3 1/3; 1/3 1/5 1/7 1/11; 0.2 0.2001 0.2002 0.2001];
for i = 1 : 3 
    muf = 1.5;
    for j = 1 : 4
        xof = xo(i,j);
        x(1) = xof;
        x(10) = 0;
        for k = 1 : 9
           x(k+1) = tent(muf, x(k));           
        end 
        X(20) = 0;
        for m = 1 : 10
           X(2*m-1) = x(m);
           X(2*m) = x(m);
        end  
        Y(1) = 0;
        Y(20) = x(10);
        for n = 1 : 9
            Y(2*n) = x(n+1);
            Y(2*n+1) = x(n+1);
        end 
        XX = 0 : 0.01 : 1;
        size  = 101;
        YY(101) = 0;
        for p = 1 : size
            YY(p) = tent(muf, XX(p));
        end
        figure(4*(i-1)+j);
        plot(X,Y);
        hold on;
        plot(XX, XX);
        plot(XX,YY);
        hold off;
    end
end

