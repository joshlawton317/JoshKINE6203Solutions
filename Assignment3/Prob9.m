function [length2,firstL,lastL] = Prob9(word)
%outputs word length, first letter, and last letter
    %inputs a word with ' ' surrounding the word (string), returns an output that counts the length of the
    %input (length2), then returns the first and last
    %letter as firstL and lastL

length2 = strlength(word);
firstL = word(1,1);
lastL = word(1,length2);

disp (length2)
disp (firstL)
disp (lastL)
end

