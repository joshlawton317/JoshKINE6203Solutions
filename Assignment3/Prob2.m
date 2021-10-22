function [sum1, dif1, product1, max1] = Prob2(input1,input2);
%outputs sum, difference, product, and max of two inputs
    %This function takes the two number inputs, does 4 mathmatical problems, saves
    %them each to a different variable, displays them at the end
 
sum1 = input1 + input2;
dif1 = input1 - input2;
product1 = input1 * input2;
max1 = max(input1,input2);

disp (sum1);
disp (dif1);
disp (product1);
disp (max1);
end