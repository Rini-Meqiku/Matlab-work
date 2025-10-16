x = -pi:0.01:pi;
y = csc(x);


y(abs(mod(x, pi)) < eps) = NaN;

plot(x, y);
