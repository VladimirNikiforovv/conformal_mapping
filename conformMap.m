function [u, v] = conformMap(x, y)

z = x + 1j*y;

w = 1/2 * (z + 1/z); % Функция Жуковского

% w = erfi(z); % функция ошибок

% w = exp(z); % отображение на экспоненту

% w = 1/(z); 

% w = sin(z);

% w = z ^ 3;

v = real(w);
u = imag(w);