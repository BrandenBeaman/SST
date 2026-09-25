% Continuous-Time Model Method for Exercise 1(d)
s = tf('s');

% Circuit Component Values
C1 = 2; 
R2 = 5; 
L1 = 3;

ZC1 = 1/(2*s);

% Impedance of resistor and inductor in parallel
ZP = (R2 * L1*s) / (R2 + L1*s);

disp('Section2')
% Input impedance
Zin = minreal(ZC1 + ZP)

% Transfer function Vout/Vin
TF = minreal(ZP / Zin)
