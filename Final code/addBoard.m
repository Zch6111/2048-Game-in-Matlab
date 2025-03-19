%This function is build to create a board for player which is existing
%'2' at the randomly position
%Build a function name
function board=addBoard
%Create a 4*4 zeros board
board=zeros(4);
%Use the point function which I made
a=point;
%Let '2' are created
board(a(1),a(2))=2;
%Print the result
board=addTwo(board);
end