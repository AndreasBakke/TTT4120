%Fra opg1:%
Nx = 28;
n= 0:(Nx-1);
x=0.9.^n;



Nh = 9;
n= 0:(Nh-1);
h = ones(1, length(n));
%subplot(3,2,1);
%stem(n, h);
%title('h[n]');

y=conv(x,h);
subplot(1,2,1);
stem(y);
title('y[n]');

Ny=Nx+Nh-1;

X1 = fft(x, Ny/4);
H1 = fft(h,Ny/4);
Y1= X1.*H1;
y1= ifft(Y1, Ny/4);
subplot(4,2,2);
stem(y1);

X2 = fft(x, Ny/2);
H2 = fft(h,Ny/2);
Y2= X2.*H2;
y2= ifft(Y2, Ny/2);
subplot(4,2,4);
stem(y2);

X3 = fft(x, Ny);
H3 = fft(h,Ny);
Y3= X3.*H3;
y3= ifft(Y3, Ny);
subplot(4,2,6);
stem(y3);

X4 = fft(x, 2*Ny);
H4 = fft(h,2*Ny);
Y4= X4.*H4;
y4= ifft(Y4, 2*Ny);
subplot(4,2,8);
stem(y4);