RegisterCommand('testrepairkit', function(source, args)
    local difficulty = args[1] or 'medium' -- Default to 'medium' if no difficulty is provided
    if difficulty ~= 'easy' and difficulty ~= 'medium' and difficulty ~= 'hard' then
        print('Invalid difficulty! Use "easy", "medium", or "hard".')
        return
    end

    local minigame = exports["five-repairkit"]:Minigame(difficulty) -- Pass the difficulty
    if minigame then 
        print('User won the minigame (' .. difficulty .. ' mode)')
    else
        print('User lost the minigame (' .. difficulty .. ' mode)')
    end
end)

RegisterKeyMapping('testrepairkit', 'Test repair kit minigame', 'KEYBOARD', 'G')
