function winner = player2(data)
p2 = data{2};
winner = 0;
if winner == 0
    if length(find(p2 == 1)) == 1 && length(find(p2 == 2)) == 1 && length(find(p2 == 3)) == 1
        winner = 1;
    elseif length(find(p2 == 4)) == 1 && length(find(p2 == 5)) == 1 && length(find(p2 == 6)) == 1
        winner = 1;
    elseif length(find(p2 == 7)) == 1 && length(find(p2 == 8)) == 1 && length(find(p2 == 9)) == 1
        winner = 1;
    elseif length(find(p2 == 1)) == 1 && length(find(p2 == 4)) == 1 && length(find(p2 == 7)) == 1
        winner = 1;
    elseif length(find(p2 == 2)) == 1 && length(find(p2 == 5)) == 1 && length(find(p2 == 8)) == 1
        winner = 1;
    elseif length(find(p2 == 3)) == 1 && length(find(p2 == 6)) == 1 && length(find(p2 == 9)) == 1
        winner = 1;
    elseif length(find(p2 == 1)) == 1 && length(find(p2 == 5)) == 1 && length(find(p2 == 9)) == 1
        winner = 1;
    elseif length(find(p2 == 3)) == 1 && length(find(p2 == 5)) == 1 && length(find(p2 == 7)) == 1
        winner = 1;
    else
        winner = 0;
    end
end
end