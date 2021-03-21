a = 5;
disp(['factorial of ' num2str(a) ' is :'])
disp(fact(a))

function y = fact(x)
    y = prod(1:x);
end