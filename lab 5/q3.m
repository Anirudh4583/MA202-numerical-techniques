% Q3

% Matlab script to calculate
% partial derivative of f(x) = sin(x1)exp(-x2)
a = [0.5; 1];
h = [10e-6; 10e-6];
trueVal = [cos(a(1))*exp(-a(2)); -sin(a(1))*exp(-a(2))];
% Central diff.  
% Partial derivative wrt x
cntDiff(1) = (f(a(1) + h(1), a(2)) - f(a(1) - h(1), a(2)))./(2.*h(1));
% Partial derivative wrt y
cntDiff(2) = (f(a(1), a(2) + h(2)) - f(a(1), a(2) - h(2)))./(2.*h(2));
errCnt = abs(trueVal - cntDiff.');
disp('Error in cntDiff is:');
disp(errCnt)
% The errCnt has two values: The first one is the derivative wrt x
% and second is derivative wrt y

% Plot
semilogy(errCnt, 'r*')
% Function def.
function fx = f(x1, x2)
  fx = sin(x1)*exp(-x2);
end