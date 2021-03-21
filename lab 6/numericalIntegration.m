% Numerical Integration for GTE
% 4N1RU0H M17R4 201951024

% function for GTE numerical integration, decides which rule to use :-
function fval = numericalIntegration(f, a, b, n, opt)    %% opt variable is used to specify which rule to use
    switch opt
        case 1
            fval = trap(f, a, b, n);
        case 2
            fval = oneThird(f, a, b, n);
        case 3
            fval = threeEighth(f, a, b, n);
    end
end

% Trapezoidal Rule function :-
function fval = trap(f, a, b, n)
    h = (b - a)./n;
    fval = 0;
    for i = 1:n
        fval = fval + h.*(f(a + (i - 1).*h) + f(a + i.*h))./2;
    end
end

% Simpson's One Third Rule function :-
function fval = oneThird(f, a, b, n)
    h = (b - a)./(2.*n);s
    fval = 0;
    for i = 1:2:2*n
        fval = fval + h.*(f(a + (i - 1).*h) + 4.*f(a + i.*h) + f(a + (i + 1).*h))./3;
    end
end

% Simpson's Three Eighth Rule function :-
function fval = threeEighth(f, a, b, n)
    h = (b - a)./(3.*n);
    fval = 0;
    for i = 1:3:3*n
        fval = fval + 3.*h.*(f(a + (i - 1).*h) + 3.*f(a + i.*h) + 3.*f(a + (i + 1).*h) + f(a + (i + 2).*h))./8;
    end
end