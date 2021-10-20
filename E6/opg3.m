n=0:99;
f1=7/40;
f2=9/40;

x=sin(2*pi*f1*n)+sin(2*pi*f2*n);
subplot(4,2,1);
plot(n,x);
xlabel('n');
ylabel('x[n]');

X= fft(x,1024);
subplot(4,2,2);
X = X(1:512);
plot(linspace(0,0.5,512),abs(X));
title('n=100');
xlabel('n');
ylabel('X(f)');

n=0:999;
x=sin(2*pi*f1*n)+sin(2*pi*f2*n);
X= fft(x,1024);
subplot(4,2,3);
plot(n,x);
xlabel('n');
ylabel('x[n]');
title('n=1000');
subplot(4,2,4);
X = X(1:512);
plot(linspace(0,0.5,512),abs(X));
title('n=1000');
xlabel('n');
ylabel('X(f)');

n=0:39;
x=sin(2*pi*f1*n)+sin(2*pi*f2*n);
X= fft(x,1024);
subplot(4,2,5);
plot(n,x);
xlabel('n');
ylabel('x[n]');
title('n=40');
subplot(4,2,6);
X = X(1:512);
plot(linspace(0,0.5,512),abs(X));
title('n=40');
xlabel('n');
ylabel('X(f)');

n=0:9;
x=sin(2*pi*f1*n)+sin(2*pi*f2*n);
X= fft(x,1024);
subplot(4,2,7);
plot(n,x);
title('n=10');
xlabel('n');
ylabel('x[n]');
subplot(4,2,8)
X = X(1:512);
plot(linspace(0,0.5,512),abs(X));
title('n=10');
xlabel('n');
ylabel('X(f)');


fig2=figure;

n=0:99;
x=sin(2*pi*f1*n)+sin(2*pi*f2*n);
X= fft(x,1024);
subplot(3,2,1);
plot(n,x);
title('Length: 1024, n=100');
xlabel('n');
ylabel('x[n]');
subplot(3,2,2)
X = X(1:512);
plot(linspace(0,0.5,512),abs(X));
title('Length: 1024, n=100');
xlabel('n');
ylabel('X(f)');



n=0:99;
x=sin(2*pi*f1*n)+sin(2*pi*f2*n);
X= fft(x,256);
subplot(3,2,3);
plot(n,x);
title('Length: 256, n=100');
xlabel('n');
ylabel('x[n]');
subplot(3,2,4)
X = X(1:128);
plot(linspace(0,0.5,128),abs(X));
title('Length: 256, n=100');
xlabel('n');
ylabel('X(f)');

n=0:99;
x=sin(2*pi*f1*n)+sin(2*pi*f2*n);
X= fft(x,128);
subplot(3,2,5);
plot(n,x);
title('Length: 128, n=100');
xlabel('n');
ylabel('x[n]');
subplot(3,2,6)
X = X(1:64);
plot(linspace(0,0.5,64),abs(X));
title('Length: 128, n=100');
xlabel('n');
ylabel('X(f)');

