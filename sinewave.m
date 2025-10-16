function [t,x] = sinewave(amplitude, freq, phase, tSpan)
% sinewave(amplitude, freq, phase, t) outputs a vectorized sine wave at a
% specified amplitude, freq(uency) and phase angle over the elements of
% input vector tSPan. The phase input is assumed to be in degrees.
% It also outputs, the input tSpan vector as t, thus defining a vector pair
% for a time-varying function.
t = tSpan;
omega = 2*pi*freq
theta_rads = deg2rad(phase);0:1e-6:8e-3;
x = amplitude * sin(omega*t + theta_rads);
end
