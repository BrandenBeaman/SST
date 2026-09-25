% using Continuous-Time Model method
s=tf('s');
ZC=1/(3*s); R1=10; R2=4; R3=8;
ZL=2*s;
% impedance of resistor and inductor in series in parallel with capacitor
ZP2 = minreal(((R3+ZL)*ZC)/(R3+ZL+ZC));
% impedance of resistors in parallel
ZP1 = (R1*R2)/(R1+R2);
% input impedance, minreal minimizes the function
Zin = minreal(ZP1+ZP2)
% vout/vin
TF1 = ZP2/Zin;
TF = TF1*ZL/(R3+ZL);
TF_reduced = minreal(TF);

% using Symbolic method
syms s
ZC=1/(3*s); R1=10; R2=4; R3=8;
ZL=2*s;
ZP2 = simplifyFraction(((R3+ZL)*ZC)/(R3+ZL+ZC));
% impedance of resistors in parallel
ZP1 = (R1*R2)/(R1+R2);
% input impedance, minreal minimizes the function
Zin = simplifyFraction(ZP1+ZP2)
% vout/vin
TF1 = ZP2/Zin;
TF = TF1*ZL/(R3+ZL);
TF_reduced = simplifyFraction(TF);