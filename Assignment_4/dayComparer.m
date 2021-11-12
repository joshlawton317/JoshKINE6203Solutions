function [improvement] = dayComparer(SubjectID, DayA, DayB)
%This function finds if an imported day is higher than the previous day
%   this sets the variable higherDay to see if dayB is higher than dayA,
%   variables that are inputted in assignment 4 as day1 to Day2, then Day2
%   to Day3. Improvement finds the subject ID's for each of the people that
%   have an increase from dayA to dayB.
higherDay = find(DayB > DayA);         %Setting higherDay to see if a Day variable is higher than another day (used for previous day in assignment 4)
improvement = SubjectID(higherDay);    %sets improvement to each of the subject ID's that showed improvement in isok strength the next day

