n = 1:256;
subplot(2,2,1);
stem(n, x);
title('x[n]');
subplot(2,2,2);
stem(n,y);
title('y[n]');

r=xcorr(y,x);
L= (length(r)-1)/2;
l=-L:L;
subplot(2,2,3);
plot(l,r);
title('ryx(l)');

% we know that ryx + y(l)* x(-l) so we need to "flip" the x vector %

x2 = fliplr(x);
ryx2 = conv(y,x2);
subplot(2,2,4);
stem(l,ryx2);
title('ryx2(l)');