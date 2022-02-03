fc = 40000;
fm = 5000;
A = 2.5;

fs = fc * 8; % Sampling frequency
f_nyquist = fs/2; % Nyquist frequency
t_min = 0.03; % minimum length
t_s = 1/fs * (2^nextpow2(t_min * fs));
t = 0: 1/fs : t_s - 1/fs;

for i = 1:3
    beta = [0.2, 1, 2];
    A_fm = A * cos (2 * pi * fc * t + beta(i) * sin (2 * pi * fm * t)); %FM signal
    fm_FFT = 2*abs(fft(A_fm))/length(t);
    fm_FFT = fm_FFT(1:end/2);
    f_fm = linspace(0, f_nyquist, length(fm_FFT));
    log_fm = 20 * log10 (fm_FFT/sqrt(2)); % in dB
    subplot (3, 1, i)
    plot (f_fm, log_fm, 'linewidth', 1.4)
    grid on;
    xlim ([10e3,70e3]); ylim ([-40,10]);
    title(['Frequency Modulated Signal in Frequency Domain for ß_f = ', num2str(beta(i))])
    xlabel('frequency [Hz]'); ylabel('A [dBrms]');
end