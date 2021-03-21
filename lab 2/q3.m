% Q3

x = linspace(10.^14, 10.^16, 100);  % generates 100 linearly spaced vectors
f1 = func1(x);
f2 = func2(x);
plot(linspace(1, 100, 100), f1 - f2, 'color','blue')
grid on

function f = func1(x)
  f = sqrt(2*(x.^2) + 1) - 1;
end

function f = func2(x)
  f = (2.*x.^2)./(sqrt(2.*x.^2) + 1) - 1;
end