% Section 5 problem 3 
HTF = tf(1,[1 2])
t = (0:0.01:4);
[y_unit,tout] = step(HTF,t);
y=2*y_unit;
figure;
plot(tout,y);
grid on;
hold on;
title('Impulse problem 3');
xlabel('Time(s)');
ylabel('y(t)');
[~,k] = min(abs(tout-1));
y_at_1 = y(k)
figure;
impulse(HTF,t);
grid on;
poles = pole(HTF)
figure;
pzmap(HTF);
grid on;