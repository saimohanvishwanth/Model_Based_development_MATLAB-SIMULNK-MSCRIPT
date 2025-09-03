f = 5;
t = 0: 0.002:1;
y = sin(2 * pi * f * t);

% plot

figure;
plot(t,y,'b', 'LineWidth',2);
title('5 hz Sine wqave');
xlabel('Time(s)');
ylabel('Amplitude');
grid on;
