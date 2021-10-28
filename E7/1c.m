n = 0:99;
x = [];
for i = 1:100
    r =rand;
    if r<0.5
        x(i) = -1;
    end
    if r>=0.5
        x(i) =1;
    end
    
end
subplot(1,3,1);
stem(n,x);
ylabel('x(n)');
xlabel('n');
title('White Binary Noise');

for i = 1:100
    r=randn;
    x(i)=r;
end

subplot(1,3,2);
stem(n,x);
ylabel('x(n)');
xlabel('n');
title('Gaussian Noise');

x=sqrt(3)*(2*rand(1,100)-1);

subplot(1,3,3);
stem(n,x);
ylabel('x(n)');
xlabel('n');
title('White Uniform Noise');