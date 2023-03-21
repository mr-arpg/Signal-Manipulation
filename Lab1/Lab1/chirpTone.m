function x = chirpTone(T,f1,f2,fs)
    ts = 1/fs; %time step for time array
    time = 0:ts:T; %time array
    %instead of a cosine, we introduce the phase -pi/2 for a sine
    f = f1:(f2-f1)/(length(time)-1):f2;
    x = sin(2*pi*f.*time);
    %x = chirp(time, f1, T, f2,"linear",-pi/2);
end