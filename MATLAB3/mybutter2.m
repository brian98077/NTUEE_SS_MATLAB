%part2
%(a)
for i = 1:1000
    x(i) = cos(2*pi*(i-1)*0.002)+2*cos(2*pi*100*(i-1)*0.002);
end

n = 1:1000;
figure;
subplot(3,1,1);
plot (n,x);
title('x[n] vs n');
xlabel('n');
ylabel('x[n]');

%(b)

[b1,a1] = butter(16,0.2);
[H1,w1] = freqz(b1,a1);
y1 = filter(b1,a1,x);
subplot(3,1,2);
plot (n,y1);
title('y1[n] vs n');
xlabel('n');
ylabel('y1[n]');

%(c)
[b2,a2] = butter(8,[0.1,0.9],'bandpass');
[H2,w2] = freqz(b2,a2);
y2 = filter(b2,a2,x);   
subplot(3,1,3);
plot (n,y2);
title('y2[n] vs n');
xlabel('n');
ylabel('y2[n]');
ylim([-2,2])