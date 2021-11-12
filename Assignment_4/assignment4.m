[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv'); %this is calling the file from the folder

[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Day1,Day2,Day3,Gender); %This is calling the funciton genderIsoCalc, a description of the function is on the function file

day1toDay2 = dayComparer(SubjectID, Day1, Day2); %calling dayComparer to determine if the scores go up from day1 to day2
day2toDay3 = dayComparer(SubjectID, Day2, Day3); %calling dayComparer to determine if the scores go up from day2 to day3

avgWeight = mean(Weight,'omitnan'); %this averages out all of the weights of the participants
day1mean = mean(Day1,'omitnan'); %this averages out all of the isok strength of the participants in day1
day2mean = mean(Day2,'omitnan'); %this averages out all of the isok strength of the participants in day2
day3mean = mean(Day3,'omitnan'); %this averages out all of the isok strength of the participants in day3

normDay1mean = day1mean ./ avgWeight; %normalizes the isok strength by weight for day one, takes the mean
normDay2mean = day2mean ./ avgWeight; %normalizes the isok strength by weight for day two, takes the mean
normDay3mean = day3mean ./ avgWeight; %normalizes the isok strength by weight for day three, takes the mean

maleIsoIndMeans(25,1) = 0;              %
femaleIsoIndMeans(25,1) = 0;            %
maleGroupIsoMean(25,1) = 0;             %
femaleGroupIsoMean(25,1) = 0;           %
day1toDay2(25,1) = 0;                   %These set the vectors to all be 25x1, making them easy to put in a table together
day2toDay3(25,1) = 0;                   %
normDay1mean(25,1) = 0;                 %
normDay2mean(25,1) = 0;                 %
normDay3mean(25,1) = 0;                 %

result = table(maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean, day1toDay2, day2toDay3, normDay1mean, normDay2mean, normDay3mean);
%Above creates a table with all of the data that we found
result{:,:}(result{:,:}==0) = NaN; %This replaces all of the zeros in the result table and replaces with NaN, this is to be helpful with calling the data to use

writetable(result,'iso_results.csv'); %Creates a file called iso_results.csv to store the results tabel