% Q5

x = 9.8^201;
y = 10.2^199;
z = sqrt(x^2 + y^2);        % Eq. 1
z
w = sqrt((x/y)^2 + 1);      % Eq. 2
w
disp("Eq. 2 is better (power of resisting overflow)")