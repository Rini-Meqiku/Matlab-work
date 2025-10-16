x = input('Enter a value for x:  ');
y = input('Enter a value for y:  ');
sum_xy = x + y;
to_show = [x; y; sum_xy];
fprintf('The sum of %1.0f and %1.0f is %1.0f.\n', to_show);