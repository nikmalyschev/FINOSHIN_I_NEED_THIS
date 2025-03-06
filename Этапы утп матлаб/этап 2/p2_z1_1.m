syms x
f = asin(x);

a = -0.2;
n_val = 1:4;
x_val = -1:0.01:1;
f_val = double(subs(f, x, x_val));

figure;
hold on;

%ряд Тейлора и ошибки
for n = n_val
    Tn = taylor(f, x, 'Order', n + 1, 'ExpansionPoint', a);
    Tn_val = double(subs(Tn, x, x_val));
    err = abs(f_val - Tn_val);
    plot(x_val, Tn_val, 'DisplayName', ['T_' num2str(n)], 'LineWidth', 1.5);
end

plot(x_val, f_val, 'k--', 'DisplayName', 'arcsin(x)', 'LineWidth', 2);

xlabel('x');
ylabel('y');
title('Ряды Тейлора');
legend show;
grid on;

%График ошибок
figure;
hold on;
for n = n_val
    Tn = taylor(f, x, 'Order', n + 1, 'ExpansionPoint', a);
    Tn_val = double(subs(Tn, x, x_val));
    err = abs(f_val - Tn_val);
    plot(x_val, err, 'DisplayName', ['Ошибка T' num2str(n)], 'LineWidth', 1.5);
end

xlabel('x');
ylabel('Ошибка');
title('Ошибка аппроксимации');
legend show;
grid on;
hold off;
