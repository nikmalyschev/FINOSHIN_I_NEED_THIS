syms x;
f = asin(x);  % Определяем функцию

% Разложения Тейлора от 1 до 4 членов
T1 = taylor(f, x, 'ExpansionPoint', -0.2, 'Order', 2);
T2 = taylor(f, x, 'ExpansionPoint', -0.2, 'Order', 3);
T3 = taylor(f, x, 'ExpansionPoint', -0.2, 'Order', 4);
T4 = taylor(f, x, 'ExpansionPoint', -0.2, 'Order', 5);

% Вывод результатов
disp('Ряд Тейлора для asin(x) в точке x = -0.2:');
disp('При n = 1:');
disp(T1);
disp('При n = 2:');
disp(T2);
disp('При n = 3:');
disp(T3);
disp('При n = 4:');
disp(T4);
