%(a)
p = transpose([1,1,-1,-1]);
q = transpose([0.3+0.4i,0.3-0.4i,0.1+0.1i,0.1-0.1i]);
figure;
subplot(2,4,1);
zplane(p,q);

%(b)
b = 0.09*poly(p);
a = poly(q);
[r,p,k] = residuez(b,a);
n = 0:20;
h = zeros(1,21);
for i = 1:4
    h = h+r(i)*power(p(i),n);
end
h(1) = h(1)+k;
subplot(2,4,2);
stem(n,h);
title('h[n] vs n');
xlabel('n');
ylabel('h[n]');

%(c)
[H,w] = freqz(b,a);
subplot(2,4,3);
plot (w,(abs(H)));
title('Magnitude vs Frequency');
xlabel('Normalized Frequency');
ylabel('Magnitude');

subplot(2,4,4);
plot (w,angle(H)/pi*180);
title('phase vs Frequency');
xlabel('Normalized Frequency');
ylabel('phase (degree)');

%(d)
z1 = [1,1,-1,-1];
p1 = [0.3+0.4i,0.3-0.4i,0.1+0.1i,0.1-0.1i];
sos = zp2sos(z1,p1,0.09);

%(e)
b1 = [0.09,0.18,0.09];
a1 = [1,-0.2,0.02];
b2 = [1,-2,1];
a2 = [1,-0.6,0.25];
[H1,w1] = freqz(b1,a1);
[H2,w2] = freqz(b2,a2);

subplot(2,4,5);
plot (w1,(abs(H1)));
title('Magnitude of H1 vs Frequency');
xlabel('Normalized Frequency');
ylabel('Magnitude');

subplot(2,4,6);
plot (w2,(abs(H2)));
title('Magnitude of H2 vs Frequency');
xlabel('Normalized Frequency');
ylabel('Magnitude');

for i = 1:512
    H3(i) = H1(i)*H2(i);
end
subplot(2,4,7);
plot (w1,(abs(H3)));
title('multiplication of |H1|、|H2| vs Frequency');
xlabel('Normalized Frequency');
ylabel('Magnitude');

%(f)
x = [zeros(1,21)];
x(1) = 1;
y = filter(b,a,x);
n = 0:20;
subplot(2,4,8);
stem(n,y);
title('y[n] vs n');
xlabel('n');
ylabel('y[n]');

