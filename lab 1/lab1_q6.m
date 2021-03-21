x1 = [0:0.01:2*pi];
y1 = sin(x1);
figure(1);
plot(x1, y1), xlabel('x'), ylabel('sinx'), title('plot1'), grid on, axis equal

x2 = [0:1:10];
y2 = x2.^2 - 10.*x2 + 15;
figure(2);
plot(y2), xlabel('x'), ylabel('y'), title('plot2'), grid on, axis equal

n = [-2:0.5:2];
h = [1,2,3,4,5];
figure(3);
plot(h), xlabel('x'), ylabel('y'), title('plot2'), grid on, axis equal