init();

%% t holding 1000 points in between 0-25
t = linspace(9, 25, 1000);

%% num for transfer function
num = [1];

%% den for transfer function 
den = [2 2 1];

yi = impulse(tf(num,den),t);
make_plot(t,yi,'Section 3 impulse response', 't', 'y');