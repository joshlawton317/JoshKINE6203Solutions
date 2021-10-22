function [triangle] = Prob5(triArray);
%This function determines if a triangle is possible
    %This function takes an inputed vector with 3 numbers, adds the two smaller
    %numbers, and checks if it is larger than the largest number. If so, a
    %triangle is possible and 1 is displayed, if not, a triangle is not
    %possible and 0 is displayed

triArray = sort(triArray);
lowNum = triArray(1,1);
midNum = triArray(1,2);
highNum = triArray(1,3);
if lowNum + midNum > highNum
    triangle = true;
else
    triangle = false;
end
disp (triangle);
end