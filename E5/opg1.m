n = 0:50;
a=0.5;
x = a.^n;

subplot(3,3,1);
stem(n, x);
title('a=0.5');
ylabel('x[n]');
xlabel('x');
a=0.9;
x = a.^n;
subplot(3,3,2);
stem(n,x);
title('a=0.9');
xlabel('x');
ylabel('x[n]');
a=-0.9;
x = a.^n;
subplot(3,3,3);
stem(n,x);
title('a=-0.9');
xlabel('x');
ylabel('x[n]');


l = -50:50;
a=0.5;
rxx = a.^abs(l)/(1-a^2);
subplot(3,3,4);
plot(l, rxx);
title('a=0.5');
xlabel('l');
ylabel('rxx(l)');

a=0.9;
rxx = a.^abs(l)/(1-a^2);
subplot(3,3,5);
plot(l, rxx);
title('a=0.9');
xlabel('l');
ylabel('rxx(l)');

a=-0.9;
rxx = a.^abs(l)/(1-a^2);
subplot(3,3,6);
plot(l, rxx);
title('a=-0.9');
xlabel('l');
ylabel('rxx(l)');

f = linspace(-0.5, 0.5, 1000);
a=0.5;
Sxx =1./(1+a^2-2*a*cos(2*pi*f));
subplot(3,3,7);
plot(f, Sxx);
title('a=0.5');
xlabel('f');
ylabel('Sxx(f)');

a=0.9;
Sxx =1./(1+a^2-2*a*cos(2*pi*f));
subplot(3,3,8);
plot(f, Sxx);
title('a=0.9');
xlabel('f');
ylabel('Sxx(f)');

a=-0.9;
Sxx =1./(1+a^2-2*a*cos(2*pi*f));
subplot(3,3,9);
plot(f, Sxx);
title('a=-0.9');
xlabel('f');
ylabel('Sxx(f)');
