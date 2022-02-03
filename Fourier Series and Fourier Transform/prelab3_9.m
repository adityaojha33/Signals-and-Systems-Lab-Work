[y,Fs] = audioread("sound_sample.wav");
t = 0:1/Fs:(numel(y)-1)/Fs;

Y = fft(y)/numel(y);
p = (0:(numel(y)-1)/2);
fp = Fs*p/numel(y);
plot(fp, abs(Y(1:(numel(y)+1)/2)));
xlim([0,4000])
xlabel("Frequency")
ylabel("Amplitude")