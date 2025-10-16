function [t,x] = sincombo(Span)
    t = Span;
    x = 10* sin(2 * pi * 1000* t);
end