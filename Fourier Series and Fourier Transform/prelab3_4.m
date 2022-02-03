fs = 200000; % sampling frequency
t = 0:1/fs:0.01;
y = square(2*pi*1000*t, 50);
%FFT

f_nyq = fs/2;
y_fft = fft(y);
y_fft = 2*abs(y_fft)/length(y);
y_fft = y_fft(1:length(y)/2);
f = linspace(0, f_nyq, length(y)/2);
%plot FFT
plot(f, y_fft);
xlabel('Frequency[Hz]');
ylabel('Voltage[V]');
title("FFT Spectrum of Square Wave");