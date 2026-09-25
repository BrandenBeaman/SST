% Continuous-Time Model Method for Exercise 1(d)
s = tf('s');

% Circuit Component Values
R1 = 2; 
R2 = 5; 
L1 = 3;

% Impedance of resistor and inductor in parallel
ZP = (R2 * L1*s) / (R2 + L1*s);

disp('Section1')
% Input impedance
Zin = minreal(R1 + ZP)

% Transfer function Vout/Vin
TF = minreal(ZP / Zin)


