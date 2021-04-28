function tic_tac_toe_game1p
a = 1;
p1 = [];
p2 = [];
cell{1} = p1;
cell{2} = p2;
t = 0;
count = 0;
winner1 = 0;
winner2 = 0;
comp = 0;
f = figure('Position', [1 100 600 700]);
text = uicontrol('Style', 'text', 'String', 'Player 1s turn', 'Position', [1 625 600 40], 'FontSize', 25);
button1 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [1 401 200 200],'FontSize', 200, 'Callback', @callbackfn1);
button2 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [201 401 200 200], 'FontSize', 200, 'Callback', @callbackfn2);
button3 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [401 401 200 200], 'FontSize', 200, 'Callback', @callbackfn3);
button4 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [1 201 200 200], 'FontSize', 200, 'Callback', @callbackfn4);
button5 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [201 201 200 200], 'FontSize', 200, 'Callback', @callbackfn5);
button6 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [401 201 200 200], 'FontSize', 200, 'Callback', @callbackfn6);
button7 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [1 1 200 200], 'FontSize', 200, 'Callback', @callbackfn7);
button8 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [201 1 200 200], 'FontSize', 200, 'Callback', @callbackfn8);
button9 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [401 1 200 200], 'FontSize', 200, 'Callback', @callbackfn9);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callbackfn1(source,eventdata)
        p1 = [p1 1];
        cell{1} = p1;
        set(button1, 'style', 'text', 'String', 'x')
        count = count + 1;
        winner1 = player1(cell);
        if winner1 ~= 1 && count ~= 9
            comp = cpu(cell);
            if comp == 1
                p2 = [p2 comp];
                cell{2} = p2;
                set(button1, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 2
                p2 = [p2 comp];
                cell{2} = p2;
                set(button2, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 3
                p2 = [p2 comp];
                cell{2} = p2;
                set(button3, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 4
                p2 = [p2 comp];
                cell{2} = p2;
                set(button4, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 5
                p2 = [p2 comp];
                cell{2} = p2;
                set(button5, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 6
                p2 = [p2 comp];
                cell{2} = p2;
                set(button6, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 7
                p2 = [p2 comp];
                cell{2} = p2;
                set(button7, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 8
                p2 = [p2 comp];
                cell{2} = p2;
                set(button8, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 9
                p2 = [p2 comp];
                cell{2} = p2;
                set(button9, 'style', 'text', 'String', 'o')
                count = count + 1;
            end
            winner2 = player2(cell);
        end
        if winner1 == 1
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Player 1 Wins!!!  Exit and Go Back to Main Board')
        elseif winner2 == 1
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Computer Wins!!!  Exit and Go Back to Main Board')
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(text, 'String', 'Tie :(  Exit and Go Back to Main Board')
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callbackfn2(source,eventdata)
        p1 = [p1 2];
        cell{1} = p1;
        set(button2, 'style', 'text', 'String', 'x')
        count = count + 1;
        winner1 = player1(cell);
        if winner1 ~= 1 && count ~= 9
            comp = cpu(cell);
            if comp == 1
                p2 = [p2 comp];
                cell{2} = p2;
                set(button1, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 2
                p2 = [p2 comp];
                cell{2} = p2;
                set(button2, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 3
                p2 = [p2 comp];
                cell{2} = p2;
                set(button3, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 4
                p2 = [p2 comp];
                cell{2} = p2;
                set(button4, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 5
                p2 = [p2 comp];
                cell{2} = p2;
                set(button5, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 6
                p2 = [p2 comp];
                cell{2} = p2;
                set(button6, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 7
                p2 = [p2 comp];
                cell{2} = p2;
                set(button7, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 8
                p2 = [p2 comp];
                cell{2} = p2;
                set(button8, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 9
                p2 = [p2 comp];
                cell{2} = p2;
                set(button9, 'style', 'text', 'String', 'o')
                count = count + 1;
            end
            winner2 = player2(cell);
        end
        if winner1 == 1
            set(button1, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Player 1 Wins!!!  Exit and Go Back to Main Board')
        elseif winner2 == 1
            set(button1, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Computer Wins!!!  Exit and Go Back to Main Board')
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(text, 'String', 'Tie :(  Exit and Go Back to Main Board')
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callbackfn3(source,eventdata)
        p1 = [p1 3];
        cell{1} = p1;
        set(button3, 'style', 'text', 'String', 'x')
        count = count + 1;
        winner1 = player1(cell);
        if winner1 ~= 1 && count ~= 9
            comp = cpu(cell);
            if comp == 1
                p2 = [p2 comp];
                cell{2} = p2;
                set(button1, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 2
                p2 = [p2 comp];
                cell{2} = p2;
                set(button2, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 3
                p2 = [p2 comp];
                cell{2} = p2;
                set(button3, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 4
                p2 = [p2 comp];
                cell{2} = p2;
                set(button4, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 5
                p2 = [p2 comp];
                cell{2} = p2;
                set(button5, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 6
                p2 = [p2 comp];
                cell{2} = p2;
                set(button6, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 7
                p2 = [p2 comp];
                cell{2} = p2;
                set(button7, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 8
                p2 = [p2 comp];
                cell{2} = p2;
                set(button8, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 9
                p2 = [p2 comp];
                cell{2} = p2;
                set(button9, 'style', 'text', 'String', 'o')
                count = count + 1;
            end
            winner2 = player2(cell);
        end
        if winner1 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Player 1 Wins!!!  Exit and Go Back to Main Board')
        elseif winner2 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Computer Wins!!!  Exit and Go Back to Main Board')
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(text, 'String', 'Tie :(  Exit and Go Back to Main Board')
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callbackfn4(source,eventdata)
        p1 = [p1 4];
        cell{1} = p1;
        set(button4, 'style', 'text', 'String', 'x')
        count = count + 1;
        winner1 = player1(cell);
        if winner1 ~= 1 && count ~= 9
            comp = cpu(cell);
            if comp == 1
                p2 = [p2 comp];
                cell{2} = p2;
                set(button1, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 2
                p2 = [p2 comp];
                cell{2} = p2;
                set(button2, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 3
                p2 = [p2 comp];
                cell{2} = p2;
                set(button3, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 4
                p2 = [p2 comp];
                cell{2} = p2;
                set(button4, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 5
                p2 = [p2 comp];
                cell{2} = p2;
                set(button5, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 6
                p2 = [p2 comp];
                cell{2} = p2;
                set(button6, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 7
                p2 = [p2 comp];
                cell{2} = p2;
                set(button7, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 8
                p2 = [p2 comp];
                cell{2} = p2;
                set(button8, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 9
                p2 = [p2 comp];
                cell{2} = p2;
                set(button9, 'style', 'text', 'String', 'o')
                count = count + 1;
            end
            winner2 = player2(cell);
        end
        if winner1 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Player 1 Wins!!!  Exit and Go Back to Main Board')
        elseif winner2 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Computer Wins!!!  Exit and Go Back to Main Board')
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(text, 'String', 'Tie :(  Exit and Go Back to Main Board')
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callbackfn5(source,eventdata)
        p1 = [p1 5];
        cell{1} = p1;
        set(button5, 'style', 'text', 'String', 'x')
        count = count + 1;
        winner1 = player1(cell);
        if winner1 ~= 1 && count ~= 9
            comp = cpu(cell);
            if comp == 1
                p2 = [p2 comp];
                cell{2} = p2;
                set(button1, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 2
                p2 = [p2 comp];
                cell{2} = p2;
                set(button2, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 3
                p2 = [p2 comp];
                cell{2} = p2;
                set(button3, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 4
                p2 = [p2 comp];
                cell{2} = p2;
                set(button4, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 5
                p2 = [p2 comp];
                cell{2} = p2;
                set(button5, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 6
                p2 = [p2 comp];
                cell{2} = p2;
                set(button6, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 7
                p2 = [p2 comp];
                cell{2} = p2;
                set(button7, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 8
                p2 = [p2 comp];
                cell{2} = p2;
                set(button8, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 9
                p2 = [p2 comp];
                cell{2} = p2;
                set(button9, 'style', 'text', 'String', 'o')
                count = count + 1;
            end
            winner2 = player2(cell);
        end
        if winner1 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Player 1 Wins!!!  Exit and Go Back to Main Board')
        elseif winner2 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Computer Wins!!!  Exit and Go Back to Main Board')
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(text, 'String', 'Tie :(  Exit and Go Back to Main Board')
        end
        for i = 1:30
            pause(1)
            t = t + 1;
        end
        if t == 30
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Time limit reached  Exit and Go Back to Main Board')
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callbackfn6(source,eventdata)
        p1 = [p1 6];
        cell{1} = p1;
        set(button6, 'style', 'text', 'String', 'x')
        count = count + 1;
        winner1 = player1(cell);
        if winner1 ~= 1 && count ~= 9
            comp = cpu(cell);
            if comp == 1
                p2 = [p2 comp];
                cell{2} = p2;
                set(button1, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 2
                p2 = [p2 comp];
                cell{2} = p2;
                set(button2, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 3
                p2 = [p2 comp];
                cell{2} = p2;
                set(button3, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 4
                p2 = [p2 comp];
                cell{2} = p2;
                set(button4, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 5
                p2 = [p2 comp];
                cell{2} = p2;
                set(button5, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 6
                p2 = [p2 comp];
                cell{2} = p2;
                set(button6, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 7
                p2 = [p2 comp];
                cell{2} = p2;
                set(button7, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 8
                p2 = [p2 comp];
                cell{2} = p2;
                set(button8, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 9
                p2 = [p2 comp];
                cell{2} = p2;
                set(button9, 'style', 'text', 'String', 'o')
                count = count + 1;
            end
            winner2 = player2(cell);
        end
        if winner1 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Player 1 Wins!!!  Exit and Go Back to Main Board')
        elseif winner2 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Computer Wins!!!  Exit and Go Back to Main Board')
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(text, 'String', 'Tie :(  Exit and Go Back to Main Board')
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callbackfn7(source,eventdata)
        p1 = [p1 7];
        cell{1} = p1;
        set(button7, 'style', 'text', 'String', 'x')
        count = count + 1;
        winner1 = player1(cell);
        if winner1 ~= 1 && count ~= 9
            comp = cpu(cell);
            if comp == 1
                p2 = [p2 comp];
                cell{2} = p2;
                set(button1, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 2
                p2 = [p2 comp];
                cell{2} = p2;
                set(button2, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 3
                p2 = [p2 comp];
                cell{2} = p2;
                set(button3, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 4
                p2 = [p2 comp];
                cell{2} = p2;
                set(button4, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 5
                p2 = [p2 comp];
                cell{2} = p2;
                set(button5, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 6
                p2 = [p2 comp];
                cell{2} = p2;
                set(button6, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 7
                p2 = [p2 comp];
                cell{2} = p2;
                set(button7, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 8
                p2 = [p2 comp];
                cell{2} = p2;
                set(button8, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 9
                p2 = [p2 comp];
                cell{2} = p2;
                set(button9, 'style', 'text', 'String', 'o')
                count = count + 1;
            end
            winner2 = player2(cell);
        end
        if winner1 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Player 1 Wins!!!  Exit and Go Back to Main Board')
        elseif winner2 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button8, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Computer Wins!!!  Exit and Go Back to Main Board')
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(text, 'String', 'Tie :(  Exit and Go Back to Main Board')
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callbackfn8(source,eventdata)
        p1 = [p1 8];
        cell{1} = p1;
        set(button8, 'style', 'text', 'String', 'x')
        winner1 = player1(cell);
        if winner1 ~= 1 && count ~= 9
            comp = cpu(cell);
            if comp == 1
                p2 = [p2 comp];
                cell{2} = p2;
                set(button1, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 2
                p2 = [p2 comp];
                cell{2} = p2;
                set(button2, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 3
                p2 = [p2 comp];
                cell{2} = p2;
                set(button3, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 4
                p2 = [p2 comp];
                cell{2} = p2;
                set(button4, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 5
                p2 = [p2 comp];
                cell{2} = p2;
                set(button5, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 6
                p2 = [p2 comp];
                cell{2} = p2;
                set(button6, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 7
                p2 = [p2 comp];
                cell{2} = p2;
                set(button7, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 8
                p2 = [p2 comp];
                cell{2} = p2;
                set(button8, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 9
                p2 = [p2 comp];
                cell{2} = p2;
                set(button9, 'style', 'text', 'String', 'o')
                count = count + 1;
            end
            winner2 = player2(cell);
        end
        if winner1 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Player 1 Wins!!!  Exit and Go Back to Main Board')
        elseif winner2 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button9, 'style', 'text')
            set(text, 'String', 'Computer Wins!!!  Exit and Go Back to Main Board')
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(text, 'String', 'Tie :(  Exit and Go Back to Main Board')
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callbackfn9(source,eventdata)
        p1 = [p1 9];
        cell{1} = p1;
        set(button9, 'style', 'text', 'String', 'x')
        count = count + 1;
        winner1 = player1(cell);
        if winner1 ~= 1 && count ~= 9
            comp = cpu(cell);
            if comp == 1
                p2 = [p2 comp];
                cell{2} = p2;
                set(button1, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 2
                p2 = [p2 comp];
                cell{2} = p2;
                set(button2, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 3
                p2 = [p2 comp];
                cell{2} = p2;
                set(button3, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 4
                p2 = [p2 comp];
                cell{2} = p2;
                set(button4, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 5
                p2 = [p2 comp];
                cell{2} = p2;
                set(button5, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 6
                p2 = [p2 comp];
                cell{2} = p2;
                set(button6, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 7
                p2 = [p2 comp];
                cell{2} = p2;
                set(button7, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 8
                p2 = [p2 comp];
                cell{2} = p2;
                set(button8, 'style', 'text', 'String', 'o')
                count = count + 1;
            elseif comp == 9
                p2 = [p2 comp];
                cell{2} = p2;
                set(button9, 'style', 'text', 'String', 'o')
                count = count + 1;
            end
            winner2 = player2(cell);
        end
        if winner1 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(text, 'String', 'Player 1 Wins!!!  Exit and Go Back to Main Board')
        elseif winner2 == 1
            set(button1, 'style', 'text')
            set(button2, 'style', 'text')
            set(button3, 'style', 'text')
            set(button4, 'style', 'text')
            set(button5, 'style', 'text')
            set(button6, 'style', 'text')
            set(button7, 'style', 'text')
            set(button8, 'style', 'text')
            set(text, 'String', 'Computer Wins!!!  Exit and Go Back to Main Board')
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(text, 'String', 'Tie :(  Exit and Go Back to Main Board')
        end
    end
    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


