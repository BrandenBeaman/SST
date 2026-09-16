%Examples for finding the natural response


disp('example 1: has single real and imaginary roots');
den = [1 4 4 8];
natural_resp_solver(den)
%roots used to find natural response: yn(t) = k1*exp(-3.5098t) + k2*exp(- 0.24512t)*cos(1.4897t+theta2)

disp('example 2; has repeated real roots');
den = [1 2 1];
natural_resp_solver(den)
%roots used to find natural response: yn(t) = k3*exp(-t) + k4*t*exp(-t)

disp('example 3; 2 distint has real roots');
den = [1 3 2];
natural_resp_solver(den)
%roots used to fin natural reponse: yn(t) = k1*exp(-2t) + k1*exp(-t)

disp('example 4; has 2 distinct real roots');
den = [1 4 5 2];
natural_resp_solver(den)
%roots used to find natural respone: yn(t) = k1*exp(-t) + k2*exp(-t)* + k2*exp(-2t)
