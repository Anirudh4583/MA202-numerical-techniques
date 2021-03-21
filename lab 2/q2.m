% Q2

for x = [1, 10, 100, 1000, 10000, 100000]
  x
  f1 = func1(x);
  f2 = func2(x);
  fprintf("Solution of Eq.1 : %f \n", f1);
  fprintf("Solution of Eq.2 : %f\n", f2);
  fprintf("Difference : %f\n\n", f2-f1);
end

function f = func1(x)
  f = sqrt(x)*(sqrt(x + 1) - sqrt(x));
end

function f = func2(x)
  f = sqrt(x)/(sqrt(x + 1) + sqrt(x));
end