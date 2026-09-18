init();
disp('SECTION 4 test 1');
sigma = 0; 
omega = 3;
mag_x = 6; 
theta_x = 30*pi/180;

t = linspace(0,5,1000);

x = 2 + (mag_x*cos(omega*t+theta_x)); %x_t time function

make_plot(t,x,'section 1 input','t','x_t');

% enter the coefficients of the transfer function numerator and denominator
num = [ 1 -2 1 ]; den = [ 1 2 16 18 2 ];

[mag_y, theta_y] = forced_resp_solver (num, den, mag_x, theta_x, sigma, omega )

% 2. DC Forced Response at omega = 3 (s = 0)
H_dc = polyval(num, 0) / polyval(den, 0);
y_dc = 2 * H_dc;

% 3. Total Forced Response (DC + AC)
y = y_dc + mag_y * cos(omega * t + theta_y);

% plot y_t function
make_plot(t,y,'section 4 response','t','y');

