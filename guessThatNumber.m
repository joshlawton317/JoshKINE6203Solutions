function guessThatNumber()  % *** WARNING: CONTAINS NO BUGS! ***   %%The error here is that is still says contains bugs when it doesn't, changed it to say there are no bugs
%---------------------------------------------------------------
%       USAGE: guessThatNumber() - Assignment 5
%
%        NAME: Joshua Lawton
%
%         DUE: November 18
%
%
% DESCRIPTION: This program is supposed to allow the user to play
%              the Number Guessing Game, however, it contains bugs.
%              Your job is to find, correct, and mark the errors with
%              comments describing the bug, how you found it, 
%              and how you corrected it. Correct the bugs and submit this
%              corrected file on github. There are between 9 - 12 bugs,
%              depending on how you correct them. 
%
%      INPUTS: None
%
%     OUTPUTS: None
%
%---------------------------------------------------------------

beginner = 1;               % beginner level #
moderate = 2;               % moderate level #
advanced = 3;               % advanced level #
beginnerHighest = 10;       % highest possible number for beginner
moderateHighest = 100;      % highest possible number for moderate
advancedHighest = 1000;    % highest possible number for advanced

% clear screen and display game introduction

clc()
fprintf(['Guess That Number Game (not buggy)\n\n', ...       %It says that this game is buggy, however it's not so I made it say not buggy
'This program plays the game of Guess That Number in which you have to guess\n', ...
'a secret number.  After each guess you will be told whether your \n', ...
'guess is too high, too low, or correct.\n\n'])

% Get level of play (1-3) from user

fprintf('Please select one of the three levels of play:\n')
fprintf('   1) Beginner (range is 1 to %d)\n', beginnerHighest)
fprintf('   2) Moderate (range is 1 to %d)\n', moderateHighest)
fprintf('   3) Advanced (range is 1 to %d)\n', advancedHighest)

level = input('Enter level (1-3): '); 

while level ~= beginner && level ~= moderate && level ~= advanced       %there was an error here with || being used instead of &&, causing me to get a message "Sorry, that is not a valid level selection." I found this through playing. I fixed by switching | to &
fprintf('Sorry, that is not a valid level selection.\n')
level = input('Please re-enter a level of play (1-3): ');
end

% set highest secret number based on level selected

if level == beginner                     %The bug here is that you are setting the variable level to beginner, instead of checking to see if it is equal. I found this bug in my initial look through. I fixed it by adding an =

highest = beginnerHighest;

elseif level == moderate

highest = moderateHighest;

else
highest = advancedHighest;          %The bug here is that the h in highest isnt capitalized. I found this by attempting to do the 3rd level. I fixed by capitalizing the H
end

% randomly select secret number between 1 and highest for level of play

%secretNumber = floor(rand() + 1 * highest); 
secretNumber = randi(highest);    %The problem here is that the secret number is always set to the highest due to having it multiplying by the highest. Not quite sure how this was being approached, so i fixed my way. Found this by constantly having number as highest (helpful for finding/testing other bugs). I fixed by setting the secret number to be a random integer between 1 and the highest possible number     

% initialize number of guesses and User_guess

numOfTries = 0;         %The error here was that numOfTries was set to 1 before the counter, making the first guess have numOfTries = 2, instead of 1. I found this by guessing the answer correct the first time and not getting the message. I fixed it by setting it to 0
userGuess = 0;

% repeatedly get user's guess until the user guesses correctly

while userGuess ~= secretNumber

% get a valid guess (an integer from 1-Highest) from the user

fprintf('\nEnter a guess (1-%d): ', highest);
userGuess = input('');
while userGuess < 1 || userGuess > highest      %there is an error here that had an equal sign after userGuess, causing it impossible to guess the highest possible number. I found this by trying to input 10 on the first level. I fixed it by erasing the =

fprintf('Sorry, that is not a valid guess.\nRe-enter a guess (1-%d): ', highest);

userGuess = input('');

end % of guess validation loop

% add 1 to the number of guesses the user has made

numOfTries = numOfTries + 1;

% report whether the user's guess was high, low, or correct

if userGuess < secretNumber                     %The sign on this line is backwards, if the userGuess is lower you said that it is too low. I found this in my initial look through. I fixed this by switching the sign
fprintf('Sorry, %d is too low.\n', userGuess);
elseif userGuess > secretNumber                     
fprintf('Sorry, %d is too high.\n', userGuess);
elseif numOfTries == 1
fprintf('\nLucky You!  You got it on your first try!\n\n');
else
fprintf('\nCongratulations!  You got %d in %d tries.\n\n', ...
secretNumber, numOfTries);   %The fprintf called for two variables, however there is only one at the end, causing the next line to start prematurely. I found this by having the congrats message look weird. I fixed it by adding the second variable as numOfTries so it displays correctly

fprintf('Game Over. Thanks for playing the Guess That Number game.\n\n');

end  % of guessing while loop

end % end of game      %%While it says end of game there is no end function, which
% is needed. I found this in my initial look through. I fixed this by
% adding an end