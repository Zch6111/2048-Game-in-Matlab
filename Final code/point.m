%This function aim to create two random position in the borad which I made
%Build a function which is called point
function a=point
%Define a value of i and j and let them equal to a number between 1 and 4
%randomly
i=0;
while i==0
    i=randi([1 4]);
end
j=0;
while j==0
    j=randi([1 4]);
end
%Let a change into a random position
a=[i j];
end