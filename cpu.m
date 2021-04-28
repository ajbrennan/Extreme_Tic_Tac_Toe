function square = cpu(data)
p1 = data{1};
p2 = data{2};
safe = 1;
while safe ~= 0
    safe = 0;
    square = randi(9);
    if length(find(p1 == 1)) == 1 && square == 1
        safe = 1;
    elseif length(find(p1 == 2)) == 1 && square == 2
        safe = 1;
    elseif length(find(p1 == 3)) == 1 && square == 3
        safe = 1;
    elseif length(find(p1 == 4)) == 1 && square == 4
        safe = 1;
    elseif length(find(p1 == 5)) == 1 && square == 5
        safe = 1;
    elseif length(find(p1 == 6)) == 1 && square == 6
        safe = 1;
    elseif length(find(p1 == 7)) == 1 && square == 7
        safe = 1;
    elseif length(find(p1 == 8)) == 1 && square == 8
        safe = 1;
    elseif length(find(p1 == 9)) == 1 && square == 9
        safe = 1;
    elseif length(find(p2 == 1)) == 1 && square == 1
        safe = 1;
    elseif length(find(p2 == 2)) == 1 && square == 2
        safe = 1;
    elseif length(find(p2 == 3)) == 1 && square == 3
        safe = 1;
    elseif length(find(p2 == 4)) == 1 && square == 4
        safe = 1;
    elseif length(find(p2 == 5)) == 1 && square == 5
        safe = 1;
    elseif length(find(p2 == 6)) == 1 && square == 6
        safe = 1;
    elseif length(find(p2 == 7)) == 1 && square == 7
        safe = 1;
    elseif length(find(p2 == 8)) == 1 && square == 8
        safe = 1;
    elseif length(find(p2 == 9)) == 1 && square == 9
        safe = 1;
    end
end
        