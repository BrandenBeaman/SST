function [mag_y, theta_y] = forced_resp_solver ( num, den, mag_x, theta_x, sigma, omega )
%forced_resp_solver Solves a differential equation in the s domain
% inputs:
% num and den provide the transfer function in the s-domain
% Euler's phasor, mag_x and theta_x
% value of sigma and omega to make s which equals sigma + 1j*omega
% outputs:
% Euler's phasor (Y)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% create s using input parameters sigma and omega from function inputs
% remember to multiply omega by 1j
s = (sigma + omega *1j);
%
% create X phasor in exponential form
% remember to multiply theta_x by 1j

X = mag_x * exp(theta_x *1j);

Y=(polyval(num,s)./polyval(den,s)).*X;
mag_y=abs(Y); theta_y=angle(Y);
disp(['Output vector Y = ' num2str(mag_y) 'e^(' num2str(theta_y) 'j)']);
end