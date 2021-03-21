% Q1


% Matlab script to calculate numerical derivative of arctan(x)
a = 1;
trueVal = 1/(1 + a.^2);
h = 1e-4;
% Forward diff.
fwdDiff = (f(a + h) - f(a))/h;
errFwd = abs(trueVal - fwdDiff);
disp(['Error in forward diff: ', num2str(errFwd)]);
% Backward diff.
bckDiff = (f(a) - f(a - h))/h;
errBck = abs(trueVal - bckDiff);
disp(['Error in backward diff: ', num2str(errBck)]);
% Central diff.
cntrDiff = (f(a + h) - f(a - h))/(2*h);
errCntr = abs(trueVal - cntrDiff);
disp(['Error in central diff.: ', num2str(errCntr)]);
% Improved Forward diff.  
iFwdDiff = (-f(a + 2*h) + 4*f(a + h) -3*f(a))/(2*h);
errIFwd = abs(trueVal - iFwdDiff);
disp(['Error in improved forward diff.: ', num2str(errIFwd)]);
% Improved Backward diff.  
iBckDiff = (3*f(a) - 4*f(a - h) + f(a - 2*h))/(2*h);
errIBck = abs(trueVal - iBckDiff);
disp(['Error in improved backward diff.: ', num2str(errIBck)]);
% Improved Central diff.  
iCntrDiff = (8*f(a + h) - 8*f(a - h) - f(a + 2*h) + f(a - 2*h))/(12*h);
errICntr = abs(trueVal - iCntrDiff);
disp(['Error in improved central diff.: ', num2str(errICntr)]);
% Plotting graph for diffrent method
semilogy([errFwd, errBck, errCntr, errIFwd, errIBck, errICntr], 'o')
title('Error for the step size h = 1e # 04')
ylabel('Error')
xlabel('Different error methods')
% Defining function for arctan(x)
function fx = f(x)
  fx = atan(x);
end