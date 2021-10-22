function [sum1] = Prob3(inp1,inp2);
%Displays Woo if sum is even, Hah if false
    %Takes 2 number inputs, adds them together, use mod function to check if
    %modulus, if false then sum is even and Woo is displayed, if true then
    %sum is false and Hah is displayed

sum1 = inp1 + inp2;

if mod(sum1,2) == 0;
    disp ('Woo');
else
    disp ('Hah');
end
end