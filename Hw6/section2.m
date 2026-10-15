clear; % Remove variables from workspace
close all; % close all figures
syms s
k = 8; z = 0.05; p1 = 3;
Av = k*(s+z)/(s+p1)

%convert symbolic equation to numerator and denominator row vectors
[symNum,symDen] = numden(Av)
num = sym2poly(symNum)
den = sym2poly(symDen)

% Create a continuous-time model of the transfer function
AvTF = tf(num, den)


% Magnitude Plot 
opts = bodeoptions;
opts.Grid ='on';
opts.PhaseVisible ='off';
opts.xlim = [10^-3 10^2];
opts.ylim = {[-30 30]};
opts.FreqUnits = 'rad/s';
figure
bode(AvTF, opts)
title('magnitude-only plot: Section2')