C = randn(10, 1);
disp('Centigrade :')
disp(C)
F = funcCtoF(C);
disp('Farenheit :')
disp(F)


function y = funcCtoF(x)
    y = (9/5)*x + 32;
end