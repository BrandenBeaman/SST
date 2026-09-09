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

% t is a column vector 
size(t);

%new vector named t_ with inracemnts = 4*pi/200 points not 201 because 0
%counts as 1 - 201 = 200 steps
t_inc = (4*pi/200);
t_ = (0 : t_inc : 4*pi);

%difference between t and t_ should be basically 0
sum(abs(t-t_));

%plot for t_
make_plot(t_, y, "cosine wave with 60 deg shift", "t_", "y")




