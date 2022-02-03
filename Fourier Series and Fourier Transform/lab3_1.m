fs = 100000; % sampling frequency
t = 0.00001:1/fs:0.05;
f = 500; % frequency of signal
A = sqrt(2)/2 ; %Amplitude 2Vpp = 0.707 Vrms
y = A*sin(2*pi*f*t);
subplot(2,1,1);
plot (t,y);
xlim([0,0.008]);
xlabel("Time [s]");
ylabel("Magnitude [V]");
title("Sine wave 500Hz");

%FFT and Single Sided Spectrum in dB
f_nyq = fs/2;
S = abs(2*fft(y)/length(y));
S = db(S);
S = S(1:length(y)/2+1);
f=linspace(0,fnyq,length(S));
subplot(2,1,2);
plot(f, S);
xlabel('Frequency[Hz]');
ylabel('Amplitude[dB]');
xlim([300,700]);
ylim([-350,15]);
title("FFT of Sine wave 500Hz");