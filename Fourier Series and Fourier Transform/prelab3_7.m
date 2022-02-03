%square wave
t = 0:0.00001:0.01;
y = square(2*pi*1000*t, 33); % 33% Duty Cycle
%FFT
fs = 200000; % sampling frequency
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
subplot(2,2,1);
plot(t, y), axis([0 0.01 -1.5 1.5]);
title("Square Wave 33 % Duty Cycle");
xlabel('Time[s]');
ylabel('Voltage[V]');
subplot(2,2,3);
plot(f, S);
title("Single sided Amplitude Spectrum");
xlabel('Frequency[Hz]');
ylabel('Voltage[dB]');
subplot(2,2,4);
plot(f, S);
title("First 4 Harmonics");
xlabel('Frequency[Hz]');
ylabel('Voltage[dB]');
xlim([0 11000]);
f = linspace(0, f_nyq, length(y)/2);
subplot(2,2,2);
plot(f, y_fft);
title("FFT Spectrum of Square Wave 33 % Duty Cycle");
xlabel('Frequency[Hz]');
ylabel('Voltage[V]');