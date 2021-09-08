signal1 = createSignal(1000);
soundsc(signal1, 1000);
pause(5);

signal2 =createSignal(3000);
soundsc(signal2, 3000);
pause(5);

signal3 = createSignal(12000);
soundsc(signal3, 12000);
pause(5);

signal4 = fixedSample(1000);
soundsc(signal4, 8000);
pause(5);

signal5 = fixedSample(3000);
soundsc(signal5, 8000);
pause(5);

signal6 = fixedSample(6000);
soundsc(signal6, 8000);
pause(5);


function signal = createSignal(Fs)
    f_1 = conv(0.3, Fs);
    N=4;
    t= 0:1/Fs:N;
    signal = sin(2*pi*f_1*t);
end


function signal2 = fixedSample(F_1)
    Fs=8000;
    N=4;
    t=0:1/Fs:N;
    signal2 = sin(2*pi*F_1*t);
    disp(F_1);
    plot(t, signal2);
end