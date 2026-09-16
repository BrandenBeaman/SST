init();
disp('SECTION 2 test 1');
sigma = 0; 
omega = 100;
mag_x = 4;
theta_x = 30*pi/180;

t = linspace(0,0.5,1000);

x = mag_x*cos(omega*t+theta_x); %x_t time function

make_plot(t,x,'section 2 input','t','x_t');

% enter the coefficients of the transfer function numerator and denominator
num = [ 1 ]; den = [ 2 2 1 ];

[mag_y, theta_y] = forced_resp_solver (num, den, mag_x, theta_x, sigma, omega);

% y_t time function, like x_t but with mag_y and theta_y
y = mag_y * cos(omega * t + theta_y);

% plot y_t function
make_plot(t,y,'section 2 response','t','y');

% Output vector Y = 0.0002e^(-2.608j)
% mag_y = 2.0000e-04
% theta_y = -2.6080

