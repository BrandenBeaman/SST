% Section 3
clear;
close all;
syms s
C1 = 2; R1 = 5; R2 = 3;
ZC1 = 1/(s*C1);
Zp =(R2*ZC1/(R2+ZC1));
Zin = (R1+Zp);
Av4 = (Zp/Zin);

% convert symbolic equation to numerator and denominator row vectors
[symNum,symDen] = numden(Av4)
num = sym2poly(symNum)
den = sym2poly(symDen)

% Create a continuous-time model of the transfer function
AvTF = tf(num, den)

% Bode plots 
opts = bodeoptions;
opts.Grid = 'on';
opts.FreqUnits ='Hz';
figure
bode(AvTF, opts)
title('Bode plots: Section 3')












