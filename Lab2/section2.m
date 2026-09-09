%section2.m file for section 2 of lab 2
init();

%vector x with 1751 values between 0 and 10 
x = linspace(0, 10, 1751);

% Calculate the corresponding y values using y = ((x^2) - 16)/ (x - 4)
% need .^ and ./ for element wise operation because x is a vector

num = [1 0 -16];
ynum = polyval (num, x);
den = [1 -4];
yden = polyval (den, x);
y = ynum ./ yden;

make_plot(x, y, "(x^2-16)/(x-4)", "x", "y")

k = find(isnan(y)) %gives you the array element index

x(k) %displays the x value

%L'Hopital's rule has us take derivative of top and bottom
% of (x^2-16)/(x-4) to find the function that gives the correct
% value of y(k).
%to fix enter the actual function value found using L'Hopital

y(k) = 2 * x(k)
