% Q8

A = [1 2; 3 4];
b = [-1; -1];
X = lineq(A, b);
disp("a = ")
disp(X);
A = [1 2; 2 4];
b = [-1; -1];
X = lineq(A, b);
disp("b = ")
disp(X);
A = [1 2];
b = 3;
X = lineq(A, b);
disp("c = ")
disp(X);
A = [1; 2];
b = [2.9; 3.9];
X = lineq(A, b);
disp("d = ")
disp(X);
function X = lineq(A, b)
  m = size(A, 1);
  n = size(A, 2);
  if m == n
    if cond(A) > 1e14
      X = pinv(A)*b;
    else
      X = A\b;
    end
  else
    if m < n
      X = A'*pinv(A*A')*b;
    else
      X =pinv(A'*A)*A'*b;
    end
  end
end