while true
    puts "inner command"
    arr_comands = []
    x = gets
    if x.chomp == "n"
        puts arr_comands
            exit
    end
    arr_comands << x
end