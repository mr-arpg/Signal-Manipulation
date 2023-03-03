function x = chirpTone(T,f1,f2,fs)
    ts = 1/fs; %time step for time array
    time = 0:ts:T; %time array
    %instead of a cosine, we introduce the phase -pi/2 for a sine
    x = chirp(time, f1, T, f2,"linear",-pi/2);
    plot (x);
    title("Synthetic signal");
end