clear; clc; close all;

syms s

% Transfer function for Vout/Vin = 1 / (s + 1.4)
H = simplifyFraction( 1 / ( s + 1.4 ) );

% Extract numerator and denominator
[ num, den ] = numden(H);

% Configure Bode options
opts = bodeoptions; 
opts.Grid = 'on';
opts.xlim = [ 0.001 100 ]; 
opts.ylim = { [ -40 0 ], [ -90 0 ] };

% Plot Vout/Vin
figure('Name', 'Bode Plot of Vout/Vin');
bode( sym2poly(num), sym2poly(den), opts );