%This function is aim to operate the user input
%Let function called left
function newBoard=up(board)
%Splits every row up and use '
col1=board(:,1)';
col2=board(:,2)';
col3=board(:,3)';
col4=board(:,4)';
%Removes all zeros
col1(col1==0)=[];
col2(col2==0)=[];
col3(col3==0)=[];
col4(col4==0)=[];
%Coding for which rows and cols changing
for i=1:3
%To make sure the vector is not empty
    if i+1>length(col1)
        break
    end    
    if col1(i)==col1(i + 1)
        col1(i)=col1(i).*2;
        col1(i+1)=[];
    end
end
for i=1:3
    if i+1>length(col2)
        break
    end
    if col2(i)==col2(i + 1)
        col2(i)=col2(i).*2;
        col2(i+1)=[];
    end
end
for i=1:3
    if i+1>length(col3)
        break
    end
    if col3(i)==col3(i + 1)
        col3(i)=col3(i).*2;
        col3(i+1)=[];
    end
end
for i=1:3
    if i+1>length(col4)
        break
    end
    if col4(i)==col4(i + 1)
        col4(i)=col4(i).*2;
        col4(i+1)=[];
    end
end
%Use padarray function to add up '0' the empty vectors above
col1=padarray(col1,[0 4-length(col1)], 'post');
col2=padarray(col2,[0 4-length(col2)], 'post');
col3=padarray(col3,[0 4-length(col3)], 'post');
col4=padarray(col4,[0 4-length(col4)], 'post');
%Create a new board by newBoard function
newBoard=[col1' col2' col3' col4'];
newBoard=addTwo(newBoard);