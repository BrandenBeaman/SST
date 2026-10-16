% Section 3
clear;
close all;
syms s
Av4 = ((13)/((s+13)*(s+87)))

% convert symbolic equation to numerator and denominator row vectors
[symNum,symDen] = numden(Av4)
num = sym2poly(symNum)
den = sym2poly(symDen)

% Create a continuous-time model of the transfer function
AvTF = tf(num, den)

% Bode plots 
opts = bodeoptions;
opts.Grid = 'on';
opts.xlim = [10^-3 10^2];
opts.ylim = {[-30 30]};
opts.FreqUnits ='Hz';
figure
bode(AvTF, opts)
title('Bode plots: Section 3')












