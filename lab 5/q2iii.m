% Q2 (iii)

% Matlab script to calculate 
% second order numerical differentiation of 2-x+ln(x) at x=1
a = 1;
trueVal = -1;
h = 10.^[-1:-1:-8];
% Forward diff.   for second order derivative
fwdDiff = (f(a + 2*h) - 2*f(a + h) + f(a))./(h.*h);
errFwd = abs(trueVal - fwdDiff);
disp(['Error in forward diff. for second order derivative: ', num2str(errFwd)]);
% Backward diff.   for second order derivative
bckDiff = (f(a) - 2*f(a - h) + f(a - 2*h))./(h.*h);
errBck = abs(trueVal - bckDiff);
disp(['Error in backward diff. for second order derivative: ', num2str(errBck)]);
% Central diff.   for second order derivative
cntrDiff = (f(a + h) - 2*f(a) + f(a - h))./(h.*h);
errCntr = abs(trueVal - cntrDiff);
disp(['Error in central diff. for second order derivative: ', num2str(errCntr)]);
% Plots
loglog(h, errFwd, '-b', h, errBck, '-g', h, errCntr, '-m');
legend('Forward Error', 'Backward Error', 'Central Error', 'Location', 'northwest');
% Function
function fx = f(x)
  fx = 2 - x + log(x);
end