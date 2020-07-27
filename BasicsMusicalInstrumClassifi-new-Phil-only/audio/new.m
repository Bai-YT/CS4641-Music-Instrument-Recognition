[y, Fs] = audioread('violin_test.flac');
l = length(y(:, 1));
for i=1:5
    audiowrite(sprintf('violin_%d.flac', i+5), y((i-1)*l/5+1:i*l/5, :), Fs);
end