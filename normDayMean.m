function [normDay1mean, normDay2mean, normDay3mean] = normDayMean(Weight, Day1, Day2, Day3)
%UNTITLED18 Summary of this function goes here
%   Detailed explanation goes here

avgWeight = mean(Weight);
day1mean = mean(Day1);
day2mean = mean(Day2);
day3mean = mean(Day3);

normDay1mean = day1mean / avgWeight;
normDay2mean = day2mean / avgWeight;
normDay3mean = day3mean / avgWeight;
end

