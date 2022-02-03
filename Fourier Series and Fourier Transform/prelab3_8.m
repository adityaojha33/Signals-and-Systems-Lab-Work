[y,Fs] = audioread("sound_sample.wav");
t = 0:1/Fs:(numel(y)-1)/Fs;
plot(t(1:442), y(1:442));
xlabel("time")
ylabel("Amplitude");
title("Sound Sample in time domain");
