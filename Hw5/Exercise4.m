syms s

%% --- Part (a): Bode Plot for Zin ---
% Zin = 7*(s + 0.07143) / s
Zin = simplifyFraction(7 * (s + 0.07143) / s);

[num_Zin, den_Zin] = numden(Zin);

opts_Zin = bodeoptions;
opts_Zin.Grid = 'on';

% Set frequency and magnitude/phase axis limits
opts_Zin.xlim = [0.001 100]; 
opts_Zin.ylim = {[-20 60], [-90 0]}; 

% Plot Bode magnitude and phase for Zin
figure(1);
bode(sym2poly(num_Zin), sym2poly(den_Zin), opts_Zin);
title('Bode Diagram - Zin');


%% --- Part (b): Bode Plot for Vout / Vin ---
% Vout/Vin = 0.5714 * s / (s + 0.07143)
TF = simplifyFraction(0.5714 * s / (s + 0.07143));

[num_TF, den_TF] = numden(TF);

opts_TF = bodeoptions;
opts_TF.Grid = 'on';

% Set frequency and magnitude/phase axis limits
opts_TF.xlim = [0.001 100];
opts_TF.ylim = {[-60 10], [0 90]};

% Plot Bode magnitude and phase for Vout/Vin
figure(2);
bode(sym2poly(num_TF), sym2poly(den_TF), opts_TF);
title('Bode Diagram - Vout / Vin');