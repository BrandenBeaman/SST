init();

%Create a vector t with values between 0 and 2*pi in 0.1 increment
 t = [0:0.1:2*pi]

 w = 4

 y = (exp(1j*(w*t-pi/6)) - exp(-1j*(w*t-pi/6)) ) / (2j)

 make_plot(t, y, 'Secition 4', 't', 'y')