[y, Fs] = audioread('violin.mp3');
audiowrite('violin.flac', y, Fs)