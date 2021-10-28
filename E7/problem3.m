w = sqrt(3/4)* randn(1, 20000);
x = filter(1,[1 1/2] ,w);
means = [];
K=20;
for i = 1:200
    t = x(i*K:(1+i)*K);
    means(i) = mean(t);
end
subplot(1,3,1);
histogram(means,20);
title('k=20')
m1=mean(means);
disp('Mean of means')
disp(m1);
disp('Variance of means')
v1 = var(means);
disp(v1);

means = [];
K=40;
for i = 1:200
    t = x(i*K:(1+i)*K);
    means(i) = mean(t);
end
subplot(1,3,2);
histogram(means,20);
title('k=40')

means = [];
K=100;
for i = 1:199
    t = x(i*K:(1+i)*K);
    means(i) = mean(t);
end
subplot(1,3,3);
histogram(means,20);
title('k=100')