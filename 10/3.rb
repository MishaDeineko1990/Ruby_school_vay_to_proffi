arr = []

loop do
    puts "Who add to arrey"
    add_name = gets.chomp

    if add_name==""
        
        puts arr 
        exit

    else

        arr.push add_name
        puts "you add items in arrrey: (\"#{arr.last}\")"


    end
end