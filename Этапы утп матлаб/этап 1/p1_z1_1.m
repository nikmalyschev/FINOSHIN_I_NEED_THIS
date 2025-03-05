N = 10;
mod = 5 * rand(N, 1);
phas = -pi + 2 * pi * rand(N, 1);
compnum = mod .* exp(1i * phas)

figure;
plot(real(compnum), imag(compnum),'.','MarkerSize',10);
xlabel('Re');
ylabel('Im');
grid on;