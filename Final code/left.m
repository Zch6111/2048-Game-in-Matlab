%This function is aim to operate the user input
%Let function called left
function newBoard=left(board)
%Splits every row up and use '
row1=board(1,:);
row2=board(2,:);
row3=board(3,:);
row4=board(4,:);
%Removes all zeros
row1(row1==0)=[];
row2(row2==0)=[];
row3(row3==0)=[];
row4(row4==0)=[];
%Coding for which rows and cols changing
for i=1:3
    %To make sure the vector is not empty
    if i+1>length(row1)
        break
    end    
    if row1(i)==row1(i + 1)
        row1(i)=row1(i).*2;
        row1(i+1)=[];
    end
end
for i=1:3
    if i+1>length(row2)
        break
    end
    if row2(i)==row2(i + 1)
        row2(i)=row2(i).*2;
        row2(i+1)=[];
    end
end
for i=1:3
    if i+1>length(row3)
        break
    end
    if row3(i)==row3(i + 1)
        row3(i)=row3(i).*2;
        row3(i+1)=[];
    end
end
for i=1:3
    if i+1>length(row4)
        break
    end
    if row4(i)==row4(i + 1)
        row4(i)=row4(i).*2;
        row4(i+1)=[];
    end
end
%Use padarray function to add up '0' the empty vectors above
row1=padarray(row1,[0 4-length(row1)], 'post');
row2=padarray(row2,[0 4-length(row2)], 'post');
row3=padarray(row3,[0 4-length(row3)], 'post');
row4=padarray(row4,[0 4-length(row4)], 'post');
%Create a new board by newBoard function
newBoard=[row1; row2; row3; row4];
newBoard=addTwo(newBoard);