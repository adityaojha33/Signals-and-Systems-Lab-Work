fs = 100000; % sampling frequency
t = 0.00001:1/fs:0.05;
f = 2000; % frequency of signal
A = 1 ; %Amplitude for 0 dB = 1 Vrms
y = A*sin(2*pi*f*t);
subplot(2,1,1);
plot (t,y);
xlim([0,0.002]);
xlabel("Time [s]");
ylabel("Magnitude [V]");
title("Sine wave 2kHz");

%FFT and Single Sided Spectrum in dB
f_nyq = fs/2;
S = abs(2*fft(y)/length(y));
S = db(S);
S = S(1:length(y)/2+1);
f=linspace(0,fnyq,length(S));
subplot(2,1,2);
plot(f, S);
xlim([300,4300]);
ylim([-350,0]);
xlabel('Frequency[Hz]');
ylabel('Amplitude[dB]');
title("FFT of Sine wave 2kHz");
