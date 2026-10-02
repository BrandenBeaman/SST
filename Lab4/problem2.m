% Section 5 problem 2
tp = [0.736 1.649 5.436 3.437];
hp = 2*exp(t);

HTF = tf(2,[1 -1])
t = (0:0.01:6);
[h,tout] = impulse(HTF,t);
figure;
plot(tout,h);
grid on;
hold on;
title('Impulse problem 2');
xlabel('Time(s)');
ylabel('h(t)');
[~,k] = min(abs(tout-1));
h_at_t = h(k)
poles = pole(HTF)
figure;
pzmap(HTF);
grid on;