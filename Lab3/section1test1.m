init();
disp('SECTION 1 test 1');
sigma = 0; omega = 10;
mag_x = 2; theta_x = 5*pi/180;
t = linspace(0,5,1000);
x = mag_x*cos(omega*t+theta_x); %x_t time function
make_plot(t,x,'section 1 input','t','x_t');
%
% enter the coefficients of the transfer function numerator and denominator
num = [ 5 0 ]; den = [ 1 4 4 8 ];
[mag_y, theta_y] = forced_resp_solver ( num, den, mag_x, theta_x, sigma, omega )
%
% y_t time function, like x_t but with mag_y and theta_y
y = mag_y * cos(omega * t + theta_y);
% plot y_t function
make_plot(t,y,'section 1 response','t','y');
