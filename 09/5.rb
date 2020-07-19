def get_comand
    x = rand(4)
    actions =  %w[:left :right :up :down]
    cmd = actions[x]
end


    comand=get_comand

    puts "Команда отримана #{comand}"

    if comand==:left
        puts "Робот їде в ліво"
    end


    if comand==:up
        puts "Робот їде в верх"
    end


    if comand==:right
        puts "Робот їде в право"
    end


    if comand==:down
        puts "Робот їде в низ"
    end
