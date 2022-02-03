fs = 200000; % sampling frequency
t = 0.00001:1/fs:0.05;
f = 1000; % frequency of signal
y = square(2*pi*f*t, 50);
plot (t,y);
xlim([0,0.002]);
ylim([-2,2]);
xlabel("Time [s]");
ylabel("Magnitude [V]");
title("Square wave 1000Hz");

