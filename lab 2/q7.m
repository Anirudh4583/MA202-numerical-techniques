% Q7

A = [1; 2];
b = [2.9; 3.9];
X = lineq(A, b);
disp(X);
function X = lineq(A,b)
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
      X = pinv(A'*A)*A'*b;
    end
  end
end