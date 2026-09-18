init();
num = [1]; % from equation 3-1
den = [2 2 1 ]; % from equation 3-1
pzmap(tf(num,den))
num = [1]; % from equation 3-2
den = [2 -2 1]; % from equation 3-2
figure
pzmap(tf(num,den))