%This function aim to add one '2' point at the empty position after user
%input
%Let function called addTwo
function board=addTwo(board)
%Give a value to a and use a to finish the changing
a=0;
%Use the point function
points=point;
%Use while loop to choose one random piont
%0 while slot is full, 1 when it is empty
while a==0
    if board(points(1),points(2))==0
        a=1;
    end
end
%Let the point the code chose equals to '2'
board(points(1),points(2))=2;
end