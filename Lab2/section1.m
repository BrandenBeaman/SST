%init function from lab 1
init();

%vector t with values between 0 - 4*pi with 201 points 
t = linspace(0, 4*pi, 201);

w = 0.5;

%phase in radians from degrees
phase = -60 * (pi/180);

theta = w*t + phase;

y = (exp(1j * theta) +  exp(1j * theta))/ 2;

make_plot(t, y, "cosine wave with 60 deg shift", "t", "y")
