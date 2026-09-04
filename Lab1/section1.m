%init() will be the first line of all scripts(except function calls)
init();

%creat a row vector Vd and assign it values 0 and 0.8 in 0.02 incremnts 
Vd = 0:0.02:0.8;

% is = 1e-12
% Id = 1e-12*(exp(Vd/(n*Vt))-1) 
% n  = 1
% Vt = 26mV

Is = 1e-12;
n = 1;
Vt = 26mV;

