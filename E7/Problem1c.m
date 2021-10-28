n = 0:19999;
c = linspace(-10,10, 20000*2-1);
x = [];
for i = 1:20000
    r =rand;
    if r<=0.5
        x(i) = -1;
    end
    if r>0.5
        x(i) =1;
    end
    
end
mean1 = mean(x);
disp('Mean White Binary Noise: ')
disp( mean1);
subplot(2,3,1);
stem(n,x);
ylabel('x(n)');
xlabel('n');
title('White Binary Noise');

subplot(2,3,4);
corr1 = xcorr(x);
plot(c,corr1);
title('Autocorrelation, White Binary Noise');

for i = 1:20000
    r=randn;
    x(i)=r;
end
mean2 = mean(x);
disp('Mean Gaussian Noise: ')
disp( mean2);

subplot(2,3,2);
stem(n,x);
ylabel('x(n)');
xlabel('n');
title('Gaussian Noise');

subplot(2,3,5);
corr2 = xcorr(x);
plot(c,corr2);
title('Autocorrelation, Gaussian Noise');

x=sqrt(3)*(2*rand(1,20000)-1);
mean3 = mean(x);
disp('Mean White Uniform Noise: ')
disp( mean3);

subplot(2,3,3);
stem(n,x);
ylabel('x(n)');
xlabel('n');
title('White Uniform Noise');

subplot(2,3,6);
corr3 = xcorr(x);
plot(c,corr3);
title('Autocorrelation, White Uniform Noise');