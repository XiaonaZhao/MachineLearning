n = 50;
N = 5000;
x = linspace(-3, 3, n)';
X = linspace(-3, 3, N)';
pix = pi*x;
y = sin(pix)./(pix)+0.1*x+0.05*randn(n, 1);

p(:, 1) = ones(n, 1);
P(:, 1) = ones(N, 1);

for ii = 1:15
    p(:, 2*ii) = sin(ii/2*x);
    p(:, 2*ii+1) = cos(ii/2*x);
    P(:, 2*ii) = sin(ii/2*X);
    P(:, 2*ii+1) = cos(ii/2*X);
end
t = p\y;
F = P*t;

figure
axis([-2.8 2.8 -0.5 1.2])
hold on
plot(X, F, 'g-')
plot(x, y, 'bo')
hold off