%(a)
for i = 1:1001
    x1(i) = sin(2*pi*(i-501)/5)/(2*pi*(i-501)/5);
end
x1(501)=1;
n = -500:500;
figure;
subplot(3,1,1);
plot (n,x1);
title('x[n] vs n');
xlabel('n');
ylabel('x1[n]');

%(b)

X1 = fft(x1);
X1 = fftshift(X1);
for i = 1:1001
    omega(i) = 2*pi*(i-502)/1001;
end
subplot(3,1,2);
plot (omega,abs(X1));
title('X vs omega');
xlabel('omega');
ylabel('X');

%(c)
X11 = zeros(1,1001);
for k = 1:1001
    for n = 1:1001
        X11(k) = X11(k)+x1(n)*exp((-j*2*pi*(n-1)*(k-1)/1001));
    end
end
X11 = fftshift(X11);
subplot(3,1,3);
plot (omega,abs(X11));
title('X vs omega');
xlabel('omega');
ylabel('X');

%(d)
w = zeros(1,1001);
for n = 376:626
w(n) = (1+cos(2*pi*abs((n/5-501)/50)))/2;
end
n2 = -500:500;
figure;
subplot(3,1,1);
plot (n2,w);
title('w[n] vs n');
xlabel('n');
ylabel('w[n]');

%(e)
for n = 1:1001
    y(n) = x1(n)*w(n);
end
subplot(3,1,2);
plot (n2,y);
title('y[n] vs n'); 
xlabel('n');
ylabel('y[n]');

%(f)
Y = fft(y);
Y = fftshift(Y);
subplot(3,1,3);
plot (omega,abs(Y));
title('Y vs omega');
xlabel('omega');
ylabel('Y');
