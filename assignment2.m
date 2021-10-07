% %Joshua Lawton
% %Sept 9, 2021
% %This program runs a game of tic-tac-toe without errors if you follow
% directions

playGame = 'Would you like to play a game of tic-tac-toe? (capitalize) Y/N: ';
str = input(playGame,'s');                                %Turning input to string
        
if strcmp(str,'Y')                                        %Starts game if player wants to play
    playAgain = true;

while playAgain == true;                                  %Start of while loop used to restart game if player decides
    
    board = ['1' '4' '7'; '2' '5' '8'; '3' '6' '9'];      %Making the game board
    
    for i = 1                                             %Starting my very impressive for loop
            
            one = board(1,1);                             %
            two = board(2,1);                             %
            three = board(3,1);                           %
            four = board(1,2);                            %
            five = board(2,2);                            %Variables that will be inputed by players
            six = board(3,2);                             %
            seven = board(1,3);                           %
            eight = board(2,3);                           %
            nine = board(3,3);                            %
            
            availableMoves = [1:9];                       %Assingment of variable to block moves if already used
            
            win1=[1:3];                                   %
            win2=[4:6];                                   %
            win3=[7:9];                                   %
            win4=[1,4,7];                                 %
            win5=[2,5,8];                                 %All win possibilities as variables/vectors
            win6=[3,6,9];                                 %
            win7=[1,5,9];                                 %
            win8=[3,5,7];                                 %
            moveH = [];                                   %Variable to add all human moves to vector
            moveC = [];                                   %Variable to add all computer moves to vector
            
            disp (board)                                  %Displaying the game board to help user choose move
            
                                                          %inputing the player move, 
            move = input('Please spell out the number where you would like to go in lowercase (Ex. one): ');
            move = str2num(move);                         %this is converting move to double as working with string is dumb
            moveH(length(moveH)+1) = move;                %adding move to the variable moveH
            moveH = sort(moveH);                          %making moveH in numerical order to help with determining win
            availableMoves = setdiff(availableMoves,move); %making the number inputed disappear from available moves
            
            board(move) = 'X';                            %Displaying an X where player moves
            disp (board)
            
             
            
            disp 'Computers turn...'                      %Making game board easier to read, displaying when comp turn
            move = randi(9);                              %Chosing move for computer
            
            check = ismember(move,availableMoves);        %Checking to make sure the move has not already been done
            if check == true;                             %if the move hasn't already been done...
                board(move) = 'O';                        %...display a O where the computer moved
            else
                while check == false;                     %if the move has already been done... (with while loop)
                    move = randi(9);                      %...choose a new number for the computer
                    check = ismember(move,availableMoves); %updates check to see if move is available, if not...
                end                                       %...it stays in while loop, if so, it ends the loop and...
                board(move) = 'O';                        %...displays a O where the computer moved 
            end
            
            moveC(length(moveC)+1) = move;                %adding move to moveC
            moveC = sort(moveC);                          %sorting moveC in numerical order to help check win
            availableMoves = setdiff(availableMoves,move);
            
             
            
            disp (board)
            
            move = input('Next Move: ');                  %new text for input from player
            move = str2num(move);
            
            check = ismember(move,availableMoves);
            if check == 1;
                board(move) = 'X';
            else
                while check == 0;
                    move = input('Spot already used, please input a clear spot: ');
                    move = str2num(move);
                    check = ismember(move,availableMoves);
                end
                board(move) = 'X';
            end
            
            moveH(length(moveH)+1) = move;
            moveH = sort(moveH);
            availableMoves = setdiff(availableMoves,move);
            
             
            
            disp (board)
            
            disp 'Computers turn...'
            move = randi(9);
            
            check = ismember(move,availableMoves);
            if check == true;
                board(move) = 'O';
            else
                while check == false;
                    move = randi(9);
                    check = ismember(move,availableMoves);
                end
                board(move) = 'O';
            end
            
            moveC(length(moveC)+1) = move;
            moveC = sort(moveC);
            availableMoves = setdiff(availableMoves,move);
            
            
            disp (board)
            
            move = input('Next Move: ');
            move = str2num(move);
            
            check = ismember(move,availableMoves);
            if check == 1;
                board(move) = 'X';
            else
                while check == 0;
                    move = input('Spot already used, please input a clear spot: ');
                    move = str2num(move);
                    check = ismember(move,availableMoves);
                end
                board(move) = 'X';
            end
            
            
            
            moveH(length(moveH)+1) = move;
            moveH = sort(moveH);
            
            check1 = ismember(moveH,win1);                %checking if numbers in moveH are equal to win1
            if check1 == true;                            %if number in moveH are equal to win1...
                disp 'Winner Winner, Chicken Dinner';     %...the human player wins
                break                                     %break out of impressive for loop
            else
                check1 = check1;
            end
            check2 = ismember(moveH,win2);
            if check2 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check2 = check2;
            end
            check3 = ismember(moveH,win3);
            if check3 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check3 = check3;
            end
            check4 = ismember(moveH,win4);
            if check4 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check4 = check4;
            end
            check5 = ismember(moveH,win5);
            if check5 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check5 = check5;
            end
            check6 = ismember(moveH,win6);
            if check6 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check6 = check6;
            end
            check7 = ismember(moveH,win7);
            if check7 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check7 = check7;
            end
            check8 = ismember(moveH,win8);
            if check8 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check8 = check8;
                 
            end
            
            disp 'Computers turn...';
            
            availableMoves = setdiff(availableMoves,move);
            
            move = randi(9);
            
            check = ismember(move,availableMoves);
            if check == true;
                board(move) = 'O';
            else
                while check == false;
                    move = randi(9);
                    check = ismember(move,availableMoves);
                end
                board(move) = 'O';
            end
            
            
            
            moveC(length(moveC)+1) = move;
            moveC = sort(moveC);
            
            check1 = ismember(moveC,win1);
            if check1 == true;
                disp 'CPU = W';
                break
            else
                check1 = check1;
            end
            check2 = ismember(moveC,win2);
            if check2 == true;
                disp 'CPU = W';
                break
            else
                check2 = check2;
            end
            check3 = ismember(moveC,win3);
            if check3 == true;
                disp 'CPU = W';
                break
            else
                check3 = check3;
            end
            check4 = ismember(moveC,win4);
            if check4 == true;
                disp 'CPU = W';
                break
            else
                check4 = check4;
            end
            check5 = ismember(moveC,win5);
            if check5 == true;
                disp 'CPU = W';
                break
            else
                check5 = check5;
            end
            check6 = ismember(moveC,win6);
            if check6 == true;
                disp 'CPU = W';
                break
            else
                check6 = check6;
            end
            check7 = ismember(moveC,win7);
            if check7 == true;
                disp 'CPU = W';
                break
            else
                check7 = check7;
            end
            check8 = ismember(moveC,win8);
            if check8 == true;
                disp 'CPU = W';
                break
            else
                check8 = check8;
                 
            end
            
            availableMoves = setdiff(availableMoves,move);
            
            disp (board)
            
            move = input('Next Move: ');
            move = str2num(move);
            check = ismember(move,availableMoves);
            if check == 1;
                board(move) = 'X';
            else
                while check == 0;
                    move = input('Spot already used, please input a clear spot: ');
                    move = str2num(move);
                    check = ismember(move,availableMoves);
                end
                board(move) = 'X';
            end
            
            moveH(length(moveH)+1) = move;
            moveH = sort(moveH);
            
            check1 = ismember(win1,moveH);
            if check1 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check1 = check1;
            end
            check2 = ismember(win2,moveH);
            if check2 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check2 = check2;
            end
            check3 = ismember(win3,moveH);
            if check3 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check3 = check3;
            end
            check4 = ismember(win4,moveH);
            if check4 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check4 = check4;
            end
            check5 = ismember(win5,moveH);
            if check5 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check5 = check5;
            end
            check6 = ismember(win6,moveH);
            if check6 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check6 = check6;
            end
            check7 = ismember(win7,moveH);
            if check7 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check7 = check7;
            end
            check8 = ismember(win8,moveH);
            if check8 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check8 = check8;
                 
            end
            
            disp 'Computers turn...';
            
            availableMoves = setdiff(availableMoves,move);
            
            move = randi(9);
            
            check = ismember(move,availableMoves);
            if check == true;
                board(move) = 'O';
            else
                while check == false;
                    move = randi(9);
                    check = ismember(move,availableMoves);
                end
                board(move) = 'O';
            end
            
            moveC(length(moveC)+1) = move;
            moveC = sort(moveC);
            
            check1 = ismember(win1,moveC);
            if check1 == true;
                disp 'CPU = W';
                break
            else
                check1 = check1;
            end
            check2 = ismember(win2,moveC);
            if check2 == true;
                disp 'CPU = W';
                break
            else
                check2 = check2;
            end
            check3 = ismember(win3,moveC);
            if check3 == true;
                disp 'CPU = W';
                break
            else
                check3 = check3;
            end
            check4 = ismember(win4,moveC);
            if check4 == true;
                disp 'CPU = W';
                break
            else
                check4 = check4;
            end
            check5 = ismember(win5,moveC);
            if check5 == true;
                disp 'CPU = W';
                break
            else
                check5 = check5;
            end
            check6 = ismember(win6,moveC);
            if check6 == true;
                disp 'CPU = W';
                break
            else
                check6 = check6;
            end
            check7 = ismember(win7,moveC);
            if check7 == true;
                disp 'CPU = W';
                break
            else
                check7 = check7;
            end
            check8 = ismember(win8,moveC);
            if check8 == true;
                disp 'CPU = W';
                break
            else
                check8 = check8;
                 
            end
            
            availableMoves = setdiff(availableMoves,move);
            
            
            
            disp (board)
            
            move = input('Next Move: ');
            move = str2num(move);
            
            check = ismember(move,availableMoves);
            if check == 1;
                board(move) = 'X';
            else
                while check == 0;
                    move = input('Spot already used, please input a clear spot: ');
                    move = str2num(move);
                    check = ismember(move,availableMoves);
                end
                board(move) = 'X';
            end
            
            moveH(length(moveH)+1) = move;
            moveH = sort(moveH);
            check1 = ismember(win1,moveH);
            
            if check1 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check1 = check1;
            end
            check2 = ismember(win2,moveH);
            if check2 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check2 = check2;
            end
            check3 = ismember(win3,moveH);
            if check3 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check3 = check3;
            end
            check4 = ismember(win4,moveH);
            if check4 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check4 = check4;
            end
            check5 = ismember(win5,moveH);
            if check5 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check5 = check5;
            end
            check6 = ismember(win6,moveH);
            if check6 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check6 = check6;
            end
            check7 = ismember(win7,moveH);
            if check7 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check7 = check7;
            end
            check8 = ismember(win8,moveH);
            if check8 == true;
                disp 'Winner Winner, Chicken Dinner';
                break
            else
                check8 = check8;
                disp 'Tie Game';                          %if no win by now, game is tied
                 i = 2;                                   %how i end my impressive for loop
            end                                
    end                                                   %end of impressive for loop
    
    disp (board);
    
    playAgain = 'Would you like to play again? (capitalize) Y/N: ';    %asking if player would like to play again
    stri = input(playAgain,'s');                          %converting input to string
    if strcmp(stri,'Y')
        playAgain = (stri=='Y');                          %if player wants to play again, this restarts first while loop
    else
        playAgain = false;                                %ending while loop if they do not want to play again
    end
end                                                       %end of while loop

disp (board);
disp ('Thank you for playing!');

elseif strcmp(str,'N')                                    %if player says they dont want to play...
    disp 'Scared?'                                        %...taunt them
else                                                      %if response isnt Y or N, make sure they entered response correctly
    disp 'Response not recognized, please remember to capitalize next time.'
end                                                       %ending if statement