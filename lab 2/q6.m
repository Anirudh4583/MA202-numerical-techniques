% Q6

x = 9.8^(-201);
y = 10.2^(-199);
z = sqrt(x^2+y^2)/y;    % Eq. 1
z
w = sqrt((x/y)^2+1);    % Eq. 2
w
disp("Eq. 2 is better in terms of the power of resisting underflow.")