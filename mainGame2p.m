function mainGame2p
select = 0;
play1 = [];
play2 = [];
winner1 = 0;
winner2 = 0;
count = 0;
f = figure('Position', [1 100 600 650]);
playGame = uicontrol('Style', 'pushbutton', 'String', 'Play a Game', 'Position', [1 526 150 50], 'FontSize', 20, 'Callback', @game);
p1win = uicontrol('Style', 'pushbutton', 'String', 'Player 1 won', 'Position', [151 526 150 50], 'FontSize', 20, 'Callback', @p1);
p2win = uicontrol('Style', 'pushbutton', 'String', 'Player 2 won', 'Position', [301 526 150 50], 'FontSize', 20, 'Callback', @p2);
rulewindow = uicontrol('Style', 'pushbutton', 'String', 'Rules', 'Position', [451 526 150 50], 'FontSize', 20, 'Callback', @rules);
game1 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [1 321 200 160], 'FontSize', 160, 'Callback', @callback1);
game2 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [201 321 200 160], 'FontSize', 160, 'Callback', @callback2);
game3 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [401 321 200 160], 'FontSize', 160, 'Callback', @callback3);
game4 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [1 161 200 160], 'FontSize', 160, 'Callback', @callback4);
game5 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [201 161 200 160], 'FontSize', 160, 'Callback', @callback5);
game6 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [401 161 200 160], 'FontSize', 160, 'Callback', @callback6);
game7 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [1 1 200 160], 'FontSize', 160, 'Callback', @callback7);
game8 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [201 1 200 160], 'FontSize', 160, 'Callback', @callback8);
game9 = uicontrol('Style', 'pushbutton', 'String', '', 'Position', [401 1 200 160], 'FontSize', 160, 'Callback', @callback9);
name1 = uicontrol('Style', 'edit', 'String', 'Player 1', 'Position', [151 576 150 50]);
name2 = uicontrol('Style', 'edit', 'String', 'Player 2', 'Position', [301 576 150 50]);
setnames = uicontrol('Style', 'pushbutton', 'String', 'Enter', 'Position', [451 576 150 50], 'Callback', @setnamer);
    function setnamer(source, eventdata)
        name1a = get(name1, 'String');
        name2a = get(name2, 'String');
        fname = fopen('namesf', 'w');
        fprintf(fname, name1a, name2a);
        fclose(fname);
        set(p1win, 'String', sprintf('%s won', name1a))
        set(p2win, 'String', sprintf('%s won', name2a))
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function game(source,eventdata)
        tic_tac_toe_game2p
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function p1(source,eventdata)
        select = 1;
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function p2(source,eventdata)
        select = 2;
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function rules(source,eventdata)
        f = figure('Position', [1 1 600 300]);
        fid = fopen('rules.txt');
        if fid ~= -1
            writing = fscanf(fid, '%s\n', [inf]);
            text = uicontrol('Style', 'text', 'String', writing, 'Position', [50 1 500 200], 'FontSize', 20);
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callback1(source,eventdata)
        if select == 1
            play1 = [play1 1];
            cellarray{1} = play1;
            winner1 = player1(cellarray);
            set(game1, 'style', 'text', 'String', 'x')
        elseif select == 2
            play2 = [play2 1];
            cellarray{2} = play2;
            winner2 = player2(cellarray);
            set(game1, 'style', 'text', 'String', 'o')
        end
        count = count + 1;
        if winner1 == 1
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 1 Wins!!!', 'Position', [1 513 150 50])
        elseif winner2 == 1
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 2 Wins!!!', 'Position', [1 513 150 50])
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(playGame, 'Style', 'text', 'String', 'Tie game :(', 'Position', [1 513 150 50])
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callback2(source,eventdata)
        if select == 1
            play1 = [play1 2];
            cellarray{1} = play1;
            winner1 = player1(cellarray);
            set(game2, 'style', 'text', 'String', 'x')
        elseif select == 2
            play2 = [play2 2];
            cellarray{2} = play2;
            winner2 = player2(cellarray);
            set(game2, 'style', 'text', 'String', 'o')
        end
        count = count + 1;
        if winner1 == 1
            set(game1, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 1 Wins!!!', 'Position', [1 513 150 50])
        elseif winner2 == 1
            set(game1, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 2 Wins!!!', 'Position', [1 513 150 50])
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(playGame, 'Style', 'text', 'String', 'Tie game :(', 'Position', [1 513 150 50])
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callback3(source,eventdata)
        if select == 1
            play1 = [play1 3];
            cellarray{1} = play1;
            winner1 = player1(cellarray);
            set(game3, 'style', 'text', 'String', 'x')
        elseif select == 2
            play2 = [play2 3];
            cellarray{2} = play2;
            winner2 = player2(cellarray);
            set(game3, 'style', 'text', 'String', 'o')
        end
        count = count + 1;
        if winner1 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 1 Wins!!!', 'Position', [1 513 150 50])
        elseif winner2 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 2 Wins!!!', 'Position', [1 513 150 50])
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(playGame, 'Style', 'text', 'String', 'Tie game :(', 'Position', [1 513 150 50])
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callback4(source,eventdata)
        if select == 1
            play1 = [play1 4];
            cellarray{1} = play1;
            winner1 = player1(cellarray);
            set(game4, 'style', 'text', 'String', 'x')
        elseif select == 2
            play2 = [play2 4];
            cellarray{2} = play2;
            winner2 = player2(cellarray);
            set(game4, 'style', 'text', 'String', 'o')
        end
        count = count + 1;
        if winner1 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 1 Wins!!!', 'Position', [1 513 150 50])
        elseif winner2 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 2 Wins!!!', 'Position', [1 513 150 50])
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(playGame, 'Style', 'text', 'String', 'Tie game :(', 'Position', [1 513 150 50])
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callback5(source,eventdata)
        if select == 1
            play1 = [play1 5];
            cellarray{1} = play1;
            winner1 = player1(cellarray);
            set(game5, 'style', 'text', 'String', 'x')
        elseif select == 2
            play2 = [play2 5];
            cellarray{2} = play2;
            winner2 = player2(cellarray);
            set(game5, 'style', 'text', 'String', 'o')
        end
        count = count + 1;
        if winner1 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 1 Wins!!!', 'Position', [1 513 150 50])
        elseif winner2 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 2 Wins!!!', 'Position', [1 513 150 50])
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(playGame, 'Style', 'text', 'String', 'Tie game :(', 'Position', [1 513 150 50])
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callback6(source,eventdata)
        if select == 1
            play1 = [play1 6];
            cellarray{1} = play1;
            winner1 = player1(cellarray);
            set(game6, 'style', 'text', 'String', 'x')
        elseif select == 2
            play2 = [play2 6];
            cellarray{2} = play2;
            winner2 = player2(cellarray);
            set(game6, 'style', 'text', 'String', 'o')
        end
        count = count + 1;
        if winner1 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 1 Wins!!!', 'Position', [1 513 150 50])
        elseif winner2 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 2 Wins!!!', 'Position', [1 513 150 50])
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(playGame, 'Style', 'text', 'String', 'Tie game :(', 'Position', [1 513 150 50])
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callback7(source,eventdata)
        if select == 1
            play1 = [play1 7];
            cellarray{1} = play1;
            winner1 = player1(cellarray);
            set(game7, 'style', 'text', 'String', 'x')
        elseif select == 2
            play2 = [play2 7];
            cellarray{2} = play2;
            winner2 = player2(cellarray);
            set(game7, 'style', 'text', 'String', 'o')
        end
        count = count + 1;
        if winner1 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 1 Wins!!!', 'Position', [1 513 150 50])
        elseif winner2 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game8, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 2 Wins!!!', 'Position', [1 513 150 50])
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(playGame, 'Style', 'text', 'String', 'Tie game :(', 'Position', [1 513 150 50])
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callback8(source,eventdata)
        if select == 1
            play1 = [play1 8];
            cellarray{1} = play1;
            winner1 = player1(cellarray);
            set(game8, 'style', 'text', 'String', 'x')
        elseif select == 2
            play2 = [play2 8];
            cellarray{2} = play2;
            winner2 = player2(cellarray);
            set(game8, 'style', 'text', 'String', 'o')
        end
        count = count + 1;
        if winner1 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 1 Wins!!!', 'Position', [1 513 150 50])
        elseif winner2 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game9, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 2 Wins!!!', 'Position', [1 513 150 50])
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(playGame, 'Style', 'text', 'String', 'Tie game :(', 'Position', [1 513 150 50])
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    function callback9(source,eventdata)
        if select == 1
            play1 = [play1 9];
            cellarray{1} = play1;
            winner1 = player1(cellarray);
            set(game9, 'style', 'text', 'String', 'x')
        elseif select == 2
            play2 = [play2 9];
            cellarray{2} = play2;
            winner2 = player2(cellarray);
            set(game9, 'style', 'text', 'String', 'o')
        end
        count = count + 1;
        if winner1 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 1 Wins!!!', 'Position', [1 513 150 50])
        elseif winner2 == 1
            set(game1, 'style', 'text')
            set(game2, 'style', 'text')
            set(game3, 'style', 'text')
            set(game4, 'style', 'text')
            set(game5, 'style', 'text')
            set(game6, 'style', 'text')
            set(game7, 'style', 'text')
            set(game8, 'style', 'text')
            set(playGame, 'Style', 'text', 'String', 'Player 2 Wins!!!', 'Position', [1 513 150 50])
        end
        if count == 9 && winner1 == 0 && winner2 == 0
            set(playGame, 'Style', 'text', 'String', 'Tie game :(', 'Position', [1 513 150 50])
        end
    end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end