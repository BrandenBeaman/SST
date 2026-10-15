% Continuous-Time Model Method for Exercise 1(d)
s = tf('s');

% Circuit Component Values
C1 = 0.1; 
R2 = 0.7; 
L1 = 10;

ZC1 = 1/(C1*s)

% Impedance of resistor and inductor in parallel
ZP = (R2 * ZC1) / (R2 + ZC1)

disp('Section2')
% Input impedance
Zin = minreal(L1 + ZP)

% Transfer function Vout/Vin
TF = minreal(ZP / Zin)
