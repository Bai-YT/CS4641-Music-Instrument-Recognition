myFiles = dir(fullfile(pwd,'*.mp3')); %gets all wav files in struct

for i=1:length(myFiles)
    [y1, Fs1] = audioread(myFiles(i).name);
    for j=1:2
        k = ceil(rand*length(myFiles));
        while(k == i)
            k = ceil(rand*length(myFiles));
        end
        [y2, Fs2] = audioread(myFiles(k).name);
        if Fs1 ~= Fs2
            continue;
        end
        len = min(length(y1), length(y2));
        audiowrite(sprintf('combined/violin_%d_%d.wav', i, k), (y1(1:len)+y2(1:len))/2, Fs1);
    end
end

fprintf("Done.\n")