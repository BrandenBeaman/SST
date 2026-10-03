syms s

%% --- Exercise 5: High-Pass RL Circuit ---
% Transfer Function: Vout/Vin = s / (s + 0.25)
TF = simplifyFraction(s / (s + 0.25));

[num_TF, den_TF] = numden(TF);

opts = bodeoptions;
opts.Grid = 'on';

% Frequency range (0.001 to 100 rad/s covers the break point at 0.25 rad/s)
opts.xlim = [0.001 100];

% Magnitude y-limits: -40 dB to 0 dB, Phase y-limits: 0 deg to 90 deg
opts.ylim = {[-40 0], [0 90]};

% Plot Bode magnitude and phase
figure(1);
bode(sym2poly(num_TF), sym2poly(den_TF), opts);
title('Bode Diagram - High Pass RL Filter (Vout / Vin)');