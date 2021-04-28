function winner = player1(data)
p1 = data{1};
winner = 0;
if winner == 0
    if length(find(p1 == 1)) == 1 && length(find(p1 == 2)) == 1 && length(find(p1 == 3)) == 1
        winner = 1;
    elseif length(find(p1 == 4)) == 1 && length(find(p1 == 5)) == 1 && length(find(p1 == 6)) == 1
        winner = 1;
    elseif length(find(p1 == 7)) == 1 && length(find(p1 == 8)) == 1 && length(find(p1 == 9)) == 1
        winner = 1;
    elseif length(find(p1 == 1)) == 1 && length(find(p1 == 4)) == 1 && length(find(p1 == 7)) == 1
        winner = 1;
    elseif length(find(p1 == 2)) == 1 && length(find(p1 == 5)) == 1 && length(find(p1 == 8)) == 1
        winner = 1;
    elseif length(find(p1 == 3)) == 1 && length(find(p1 == 6)) == 1 && length(find(p1 == 9)) == 1
        winner = 1;
    elseif length(find(p1 == 1)) == 1 && length(find(p1 == 5)) == 1 && length(find(p1 == 9)) == 1
        winner = 1;
    elseif length(find(p1 == 3)) == 1 && length(find(p1 == 5)) == 1 && length(find(p1 == 7)) == 1
        winner = 1;
    else
        winner = 0;
    end
end
end
    
    
%123//456//789//147//258//369//159//357