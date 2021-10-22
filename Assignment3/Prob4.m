function [output] = Prob4(q,d,n,p);
%adds up money
    %takes an input for quarters, dimes, nickels, and pennies, in that order, then outputs
    %the total. Please enter a 0 if you do not have the coin.

output = (q * .25) + (d * .1) + (n * .05) + (p * .01);
disp (output);
end