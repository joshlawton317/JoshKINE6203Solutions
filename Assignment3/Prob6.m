function [prim] = Prob6(numb);
%Checks if input is a prime number
    %Takes a number input, checks if it is a prime, if it is it says true, if not,
    %it says false
prim = isprime(numb);
if prim == 1
    disp ('True')
else
    disp ('False')
end

end