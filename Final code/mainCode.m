%Here are the codes which are the main part of my project, it involved the
%excution of the user's operations, caculate the result and print out the
%result to let user knows.
%Use the addBoard function to build up a 4*4 board to start.
board=addBoard;
%Set the value of stop and score to find the result
stop=0;
score=0;
%Define steps to record how many steps user doing.
steps=0;
%display the board to player
disp(board)
%Use the while loop to make sure user can make operation until the end
while stop==0
    %Use the function to get the input and excute the operations
    a=userInput;
    switch a
        case 1
            board=up(board);
            steps=steps+1;
        case 2
            board=down(board);
            steps=steps+1;
        case 3
            board=right(board);
            steps=steps+1;
        case 4
            board=left(board);
            steps=steps+1;
        case 5
            board=addBoard;
        case 6
            stop=1;
            score=2;
    end
    disp(board)
end
%Use another while loop to make sure the code can find the value of 2048
while stop==0
    for i=1:4
        for j=1:4
            %Find the 2048
            if sum(sum(board(i,j)==2048))>0
                stop=1;
                score=1;
            end
            %Find the situation if there are no 2048 and can't continue
            if sum(sum(board(i,j)==0))~=0
                stop=1;
                score=3;
            end
        end
    end
end
%Use the if to find the result of this game
%and tell the user
if score==1
    disp('Congradulations, you finally win.');
elseif score==2
    b=input('You are going to close?(1.yes 2.No)');
    if b==1
        disp('See you later!')
    elseif b==2
        disp('Please restart it, good luck!')
    end
elseif score==3
    disp('Nice try, you can do better next time.')
end
fprintf("You have used %d times",steps);