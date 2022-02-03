%square wave
fs = 200000; % sampling frequency
t = 0:1/fs:0.01;
y = square(2*pi*1000*t, 50);
%FFT
f_nyq = fs/2;
y_fft = fft(y);
y_fft = 2*abs(y_fft)/length(y);
y_fft = y_fft(1:length(y)/2);
f = fs*(0:(length(y)/2))/length(y);
%Single Sided Spectrum in dB
S = abs(2*fft(y)/length(y));
S = db(S);
S = S(1:length(y)/2+1);
S(2:end-1) = 2*S(2:end-1);
%plot
plot(f, S);
xlabel('Frequency[Hz]');
ylabel('Voltage[dB]');
title("First 4 Harmonics");
xlim([0,20000]);