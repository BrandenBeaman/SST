% Must copy into hw5_solver_p3.m until LaTeX reader for mlx is found.
syms s
% Zp R2 in parallel with capacitor
Zp = simplifyFraction( 5 * 1 / ( 0.5 * s ) / ( 5 + 1 / ( 0.5 * s ) ) )
% Zin input impedance
Zin = simplifyFraction( 2 + Zp )
% H, input impedance, entering given equation
H = simplifyFraction( 2 * ( s + 1.4 ) / ( s + 0.4 ) )
% Either Zin or H can be used
[ num, den ] = numden (H)
opts = bodeoptions; opts.Grid = 'on';
% xlim sets x axis range for both magnitude and phase
% ylim sets y axis range for mag first, phase second
% always put lower number first
opts.xlim = [ 0.001 100 ]; opts.ylim = { [ -10 30 ], [ -90 0 ] };
bode ( sym2poly (num) , sym2poly ( den ) , opts )

% Vo/Vin transfer function
TF = simplifyFraction ( Zp / Zin )
% H, input impedance, entering given equation
H = simplifyFraction ( 1 / ( s + 1.4 ) )
% Either TF or H can be used
[ num, den ] = numden (H)
opts = bodeoptions; opts.Grid = 'on';
% x range 0.001 to 100 for both mag and phase
% y range -40dB to 0dB for mag, -90 deg to 0 deg for phase
opts.xlim = [ 0.001 100 ]; opts.ylim = { [ -40 0 ], [ -90 0 ] };
bode ( sym2poly (num) , sym2poly ( den ) , opts )