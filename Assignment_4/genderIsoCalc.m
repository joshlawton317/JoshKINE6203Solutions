function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Day1,Day2,Day3,Gender)
%This function finds the average of the isok strength for each person (male
%and female separate), and the overall average for males and females
%   This sorts the Gender heading for both males and females (had a problem
%   using females as sorter == 0). IsoIndMeans takes the averages of each
%   subject, while GroupIsoMean finds the averages of the subjects combined
%   for each day.

sorter = [Gender == 'M'];          %Finds all M for Gender (all males)
male = (find (sorter == 1));       %sets sorter to 1 for all males
sorterV2 = [Gender == 'F'];        %Finds all F for Gender (all females)
female = (find (sorterV2 == 1));   %sets sorterV2 to 1 for all females

maleIsoIndMeans = (Day1(male)+Day2(male)+Day3(male))/3;          %finds the average of isok strength for each male
femaleIsoIndMeans = (Day1(female)+Day2(female)+Day3(female))/3;  %finds the average of isok strength for each female

maleGroupIsoMean = mean(maleIsoIndMeans);       %Averages out the isok strength for all males
femaleGroupIsoMean = mean(femaleIsoIndMeans);   %Averages out the isok strength for all females

end