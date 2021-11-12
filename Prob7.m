function [] = Prob7(vect1,vect2)
%Displays a line graph for two vectors
    %Takes two inputted vectors, separated by a comma, of the same or different length, and displays a graph with
    %the two vectors, with a great title and axis labels

plot(vect1);
hold on
plot(vect2);
title('Title');
xlabel('X-axis');
ylabel('Y-axis');
end

