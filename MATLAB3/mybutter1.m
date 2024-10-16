% part1
%(a)
for i = 1:100
    x(i) = cos(2*pi*(i-1)*0.05);
end
n = 1:100;
figure;
plot (n,x);
title('x[n] vs n');
xlabel('n');
ylabel('x[n]');

%(b)
[b1,a1] = butter(3,0.05);
[H1,w1] = freqz(b1,a1);
figure;
subplot(3,3,1);
plot (w1,20*log10(abs(H1)));
title('Magnitude vs Frequency');
xlabel('Normalized Frequency');
ylabel('Magnitude (dB)');

subplot(3,3,2);
plot (w1,angle(H1)/pi*180);
title('phase vs Frequency');
xlabel('Normalized Frequency');
ylabel('phase (degree)');

y1 = filter(b1,a1,x);
subplot(3,3,3);
plot (n,y1);
title('y1[n] vs n');
xlabel('n');
ylabel('y1[n]');

%(c)
[b2,a2] = butter(7,0.05);
[H2,w2] = freqz(b2,a2);
subplot(3,3,4);
plot (w2,20*log10(abs(H2)));
title('Magnitude vs Frequency');
xlabel('Normalized Frequency');
ylabel('Magnitude (dB)');

subplot(3,3,5);
plot (w2,angle(H2)/pi*180);
title('phase vs Frequency');
xlabel('Normalized Frequency');
ylabel('phase (degree)');

y2 = filter(b2,a2,x);
subplot(3,3,6);
plot (n,y2);
title('y2[n] vs n');
xlabel('n');
ylabel('y2[n]');

%(d)
[b3,a3] = butter(3,0.5);
[H3,w3] = freqz(b3,a3);
subplot(3,3,7);
plot (w3,20*log10(abs(H3)));
title('Magnitude vs Frequency');
xlabel('Normalized Frequency');
ylabel('Magnitude (dB)');

subplot(3,3,8);
plot (w3,angle(H3)/pi*180);
title('phase vs Frequency');
xlabel('Normalized Frequency');
ylabel('phase (degree)');

y3 = filter(b3,a3,x);
subplot(3,3,9);
plot (n,y3);
title('y3[n] vs n');
xlabel('n');
ylabel('y3[n]');



