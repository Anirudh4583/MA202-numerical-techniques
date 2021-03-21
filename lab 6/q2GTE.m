% Q2 GTE
% x^3 - 2x,

% True Value of the integration of the function from b to a :-
a = 0;
b = pi./2;
n = 100;
truVal = integratedf(b) - integratedf(a);

% Error using Trapezoid Rule :-

trap = numericalIntegration(@f, a, b, n, 1);

errTrap = abs(trap - truVal);

% Calculating the error using Simpson's One Third Rule :-

oneThird = numericalIntegration(@f, a, b, n, 2);

errOneThird = abs(oneThird - truVal);

% Calculating the error using Simpson's Three Eighth Rule :-

threeEighth = numericalIntegration(@f, a, b, n, 3);

errThreeEighth = abs(threeEighth - truVal);

% Display errors :-

disp(['The error using Trapezoidal Rule : ', num2str(errTrap)]);
disp(['The error using Simpson''s One Third Rule : ', num2str(errOneThird)])
disp(['The error using Simpson''s Three Eighth Rule : ', num2str(errThreeEighth)])

% Plots :-

semilogy(1, errTrap,'ro', 2, errOneThird, 'go', 3, errThreeEighth, 'bo')
legend('Trapezoidal Rule', 'Simpson''s One Third Rule', 'Simpson''s Three Eighth Rule')
title('LTE for numerical integration of x^3 - 2x')
xlabel('Methods of Numerical Integration')
ylabel('Error')

% Function to be integrated :-
function fval = f(x)
    fval = x.^3 - 2.*x;
end

% Integrated Function :-
function fx = integratedf(x)
    fx = (x.^4)./4 - x.^2;
end