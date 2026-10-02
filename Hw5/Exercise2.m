clear; clc; close all;
syms s

% --- PART 1: Zin Plot ---
% Zp R2 in parallel with capacitor
Zp = simplifyFraction( 5 * 1 / ( 0.5 * s ) / ( 5 + 1 / ( 0.5 * s ) ) );
% Zin input impedance
Zin = simplifyFraction( 2 + Zp );
% H, input impedance, entering given equation
H = simplifyFraction( 2 * ( s + 1.4 ) / ( s + 0.4 ) );

[ num, den ] = numden(H);
opts = bodeoptions; opts.Grid = 'on';
opts.xlim = [ 0.001 100 ]; opts.ylim = { [ -10 30 ], [ -90 0 ] };

% Open Figure 1 for Zin
figure(1);
bode( sym2poly(num), sym2poly(den), opts );
title('Bode Plot of Zin');

% --- PART 2: Vout/Vin Plot ---
% Vo/Vin transfer function
TF = simplifyFraction( Zp / Zin );
% H for Vout/Vin
H = simplifyFraction( 1 / ( s + 1.4 ) );

% Recalculate num and den for the new H
[ num, den ] = numden(H);
opts = bodeoptions; opts.Grid = 'on';
opts.xlim = [ 0.001 100 ]; opts.ylim = { [ -40 0 ], [ -90 0 ] };

% Open Figure 2 for Vout/Vin
figure(2);
bode( sym2poly(num), sym2poly(den), opts );
title('Bode Plot of Vout/Vin');