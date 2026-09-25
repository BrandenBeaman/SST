% Continuous-Time Model Method for Exercise 1(d)
s = tf('s');

% Circuit Component Values
R1 = 1; 
R2 = 4; 

L1 = 2;
C1 = 4;

ZC1 = 1/(4*s);

% Impedance of resistor and inductor in parallel
ZP = (R1 * L1*s) / (R1 + L1*s)

% Impedence of cap and resistor in series
ZS = ZC1 + R2; 

disp('Section3')
% Input impedance
Zin = minreal(ZS + ZP)



% Transfer function Vout/Vin
TF = minreal(ZP / Zin)