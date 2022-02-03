% Nyquist Sampling
fs=100000;
f = 100;
t=0:1/fs:1;
w = 2*pi*50;
x = 5*sin(w*t);
subplot(3,1,1);
plot(t,x,'b');
title('Continuous Input Signal x(t)');
xlabel('time [s]'); ylabel('Amplitude [V]');
grid on;
hold on;

p=(1+square(2*pi*t*f,0.1))/2;
subplot(3,1,2);
plot(t,p,'b');
title('Sampling Unity Impulse Train p(t)');
xlabel('time [s]'); ylabel('Amplitude [V]');
grid on;
hold on;

output = x.*p;
subplot(3,1,3);
plot(t,output,'b');
xlim([0,1])
ylim([-5,5]);
title('Output Sampled Signal');
xlabel('time [s]'); ylabel('Amplitude [V]');
grid on;
hold on;