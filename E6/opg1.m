Nx = 28;
n= 0:(Nx-1);
x=0.9.^n;
subplot(3,2,1);
stem(n,x);
ylabel('x[n]');
xlabel('n');

f = linspace(0,1, 1000);

top=0.9.*exp(-1i*2*pi*f).*(1-0.9*exp(-(Nx-1)*1i*2*pi*f));
bot=1-0.9.*exp(-1i*2*pi*f);
X=top./bot;
subplot(3,2,2);
plot(f,abs(X));
ylabel('X(f)');
xlabel('f');

X1= fft(x,Nx/4);
X2= fft(x,Nx/2);
X3= fft(x, Nx);
X4= fft(x, 2*Nx);

subplot(3,2,3);
stem(linspace(0,1,Nx/4),X1);
hold on;
plot(f, abs(X), '--k');
ylabel('X(f)');
xlabel('f');
title('Nx/4');

subplot(3,2,4);
stem(linspace(0,1,Nx/2),X2);
hold on;
plot(f, abs(X), '--k');
ylabel('X(f)');
xlabel('f');
title('Nx/2');

subplot(3,2,5);
stem(linspace(0,1,Nx),X3);
hold on;
plot(f, abs(X), '--k');
ylabel('X(f)');
xlabel('f');
title('Nx');

subplot(3,2,6);
stem(linspace(0,1,2*Nx),X4);
hold on;
plot(f, abs(X), '--k');
ylabel('X(f)');
xlabel('f');
title('2Nx');