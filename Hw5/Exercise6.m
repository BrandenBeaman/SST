syms s

%% --- Exercise 6: Low-Pass RL Circuit ---
% Transfer Function: Vout/Vin = 0.5 / (s + 0.5)
TF = simplifyFraction(0.5 / (s + 0.5));

[num_TF, den_TF] = numden(TF);

opts = bodeoptions;
opts.Grid = 'on';

% Frequency range (0.001 to 100 rad/s covers the break point at 0.5 rad/s)
opts.xlim = [0.001 100];

% Magnitude y-limits: -40 dB to 0 dB, Phase y-limits: -90 deg to 0 deg
opts.ylim = {[-40 0], [-90 0]};

% Plot Bode magnitude and phase
figure(1);
bode(sym2poly(num_TF), sym2poly(den_TF), opts);
title('Bode Diagram - Low Pass RL Filter (Vout / Vin)');