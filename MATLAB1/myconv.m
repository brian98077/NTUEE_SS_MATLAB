% Part (a)
n1 = 1:39;
x1 = [n1(1:20), 40-n1(21:end)];
x1 = transpose(x1);
figure;
subplot(2,1,1);
stem(1:39, x1);
title('x1[n]');
xlabel('n');
ylabel('Amplitude');

n2 = 1:11;
x2 = [ones(1,11)];
x2 = transpose(x2);
subplot(2,1,2);
stem(1:11, x2);
title('x2[n]');
xlabel('n');
ylabel('Amplitude');


% Part (b)
y1 = conv(x1,x2);
figure;
stem(1:49, y1);
title('y1[n]');
xlabel('n');
ylabel('Amplitude');

% Part (c)
N1 = length(x1)+length(x2)-1;
a1 = length(x1);
A1 =[];
for i = 1:a1
    for j = 1:a1
        A1(j+i-1,i) = x1(j,1);
    end
end
X2 = [1:39];
for i = 1:11
    X2(i) = x2(i);
end
for i = 12:39
    X2(i)=0;
end
X2 = transpose(X2);
Y1 = A1*X2;
y1_ans = [];
for i = 1:49
    y1_ans(i) = Y1(i);
end
figure;
stem(1:49, y1_ans);
title('Output y1_ans[n] using matrix form');
xlabel('n');
ylabel('Amplitude');


% Part (d) 
% d-1
x1 = transpose([3,9,27]);
figure;
subplot(2,1,1);
stem(1:3, x1);
title('x1[n]');
xlabel('n');
ylabel('Amplitude');

x2 = transpose([2,4,8,16,32]);
subplot(2,1,2);
stem(1:5, x2);
title('x2[n]');
xlabel('n');
ylabel('Amplitude');

%d-2

y2 = conv(x1,x2);
figure;
stem(1:7, y2);
title('y2[n]');
xlabel('n');
ylabel('Amplitude');

%d-3

N2 = length(x1)+length(x2)-1;
a2 = length(x2);
A2 =[];
for i = 1:a2
    for j = 1:a2
        A2(j+i-1,i) = x2(j,1);
    end
end
X1 = [1:5];
for i = 1:3
    X1(i) = x1(i);
end
for i = 4:5
    X1(i)=0;
end
X1 = transpose(X1);
Y2 = A2*X1;
y2_ans = [];
for i = 1:7
    y2_ans(i) = Y2(i);
end
figure;
stem(1:7, y2_ans);
title('Output y2[n] using matrix form');
xlabel('n');
ylabel('Amplitude');

