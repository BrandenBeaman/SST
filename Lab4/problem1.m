% Section 5 problem 1

tp = [0.368 0.736 0.632 1.264]
hp = 2*exp(-2*t)

HTF = tf(2,[1 2]);
t = (0:0.01:6);
[h,tout] = impulse(HTF,t);
figure;
plot(tout,h);
grid on;
hold on;
title('Impulse problem 1');
xlabel('Time(s)');
ylabel('h(t)');
[~,k] = min(abs(tout-0.5));
h_at_05 = h(k)
poles = pole(HTF)
figure;
pzmap(HTF);
grid on;