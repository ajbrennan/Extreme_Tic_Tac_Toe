function choice
f = figure('Position', [1 100 600 200]);
question = uicontrol('Style', 'text', 'String', 'Enter # of players (1 or 2)', 'Position', [1 151 600 50], 'FontSize', 50);
edit = uicontrol('Style', 'edit', 'Position', [1 76 600 50], 'FontSize', 50);
enter = uicontrol('Style', 'pushbutton', 'String', 'Enter', 'Position', [1 1 600 50], 'FontSize', 50, 'Callback', @enter1);
    function enter1(source,eventdata)
        n = str2num(get(edit, 'String'));
        if n == 1
            mainGame1p
        elseif n == 2
            mainGame2p
        else
            set(question, 'string', 'Invalid, enter 1 or 2')
        end
    end
end