fs = 300000; %sampling frequency
fc = 1000; %cutoff frequency

[b,a]=butter(3,(fc/(fs/2)),'low'); %butterworth 3rd order
[h,f]=freqz(b,a,1000,fs);
response_dB = 20.*log10(h.*conj(h));

semilogx(f,response_dB);
xlim([100,100000]); %range of frequency
title('Butterworth: Third Order Low Pass Filter');
xlabel('Frequency [Hz]');
ylabel('Magnitude [dB]');