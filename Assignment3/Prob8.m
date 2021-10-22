function [] = Prob8(numb,numb2)
%Outputs every number between two inputed numbers
	%This takes two numbers as inputs, checks which number is bigger, then
	%displays a count to the higher number starting from the lower number

if numb > numb2;
    disp (numb2:numb);
elseif numb2 > numb;
    disp (numb:numb2);
else
    disp (numb);
end

