x = 0:0.1:360;
y = secd(x);


y(abs(mod(x - 90, 180)) < eps) = NaN;

plot(x, y);
