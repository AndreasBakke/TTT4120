w = sqrt(3/4)* randn(1, 20000);
x = filter(1,[1 1/2] ,w);
subplot(3,1,1)
plot(x);
title('x(n)')
m=1/length(x)*sum(x);
disp('Mean');
disp(m);
rxx = [];
% 
% for i = 1:20000
%     for l = 1:20000-i
%         try
%             rxx(l) = x(i).*x(i+l);
%         catch
%             warning('Index exceeds the number of array elements (20000).');
%         end
%     end
% end
%Tror ikke dette er riktig^

rxx = xcorr(x);
m = linspace(-10,10,20000*2-1);
rxxc = (-1/2).^abs(m);
subplot(3,1,2);
plot(m,rxx)
title('Estimated Autocorrelation')

subplot(3,1,3)
plot(m,rxxc)
title('Theoretical Autocorrelation');

Px=1/20000*sum(x.^2);
disp('power')
disp(Px);