% Section 4
clear;
close all;
syms s
C = 0.0047
R = 10
Zc = 1/(s*C);
Zin = (R+Zc);
Av5 = R/(Zin);

% convert symbolic equation to numerator and denominator row vectors
[symNum,symDen] = numden(Av5)
num = sym2poly(symNum)
den = sym2poly(symDen)

% Create a continuous-time model of the transfer function
AvTF = tf(num, den)

% Magnitude only plot
opts = bodeoptions;
opts.Grid = 'on';
opts.PhaseVisible ='off';
opts.ylim = {[-30 10]}
opts.FreqUnits ='Hz';
figure
bode(AvTF, opts)
title('Magnitude Bode Plot: Section 4')