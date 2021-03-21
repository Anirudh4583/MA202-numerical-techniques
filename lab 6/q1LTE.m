% Q1 LTE
% 2 - x + ln(x)

% True Value of the integration of the function from b to a :-
a = 1;
b = 2;
truVal = integratedf(b) - integratedf(a);

% Error using Trapezoid Rule :-

trap = numericalIntegrationSingle(@f, a, b, 1);

errTrap = abs(trap - truVal);

% Error using Simpson's One Third Rule :-

oneThird = numericalIntegrationSingle(@f, a, b, 2);

errOneThird = abs(oneThird - truVal);

% Error using Simpson's Three Eighth Rule :-

threeEighth = numericalIntegrationSingle(@f, a, b, 3);

errThreeEighth = abs(threeEighth - truVal);

% Display errors :-

disp(['The error using Trapezoidal Rule : ', num2str(errTrap)]);
disp(['The error using Simpson''s One Third Rule : ', num2str(errOneThird)])
disp(['The error using Simpson''s Three Eighth Rule : ', num2str(errThreeEighth)])

% Plots :-

semilogy(1, errTrap,'ro', 2, errOneThird, 'go', 3, errThreeEighth, 'bo')
legend('Trapezoidal Rule', 'Simpson''s One Third Rule', 'Simpson''s Three Eighth Rule')
title('LTE for numerical integration of 2 - x + ln(x)')
xlabel('Methods of Numerical Integration')
ylabel('Error')

% Function to be integrated :-
function fval = f(x)
    fval = 2 - x + log(x);
end

% Integrated Function :-
function fx = integratedf(x)
    fx = 2.*x - (x.^2)./2 + x.*log(x) - x;
end