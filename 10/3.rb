arr = []

loop do

    puts "Who add to arrey"
    add_name = gets.chomp

    if add_name==""
        
        x=1 

        arr.each do |el|
            puts "#{x}: #{el}" 
            x=x+1
        end
        
        exit

    else
        puts "How old #{add_name}"
        age = gets.to_i
        arr.push [add_name, age]
        puts "you add items in arrrey: (\"#{arr.last}\")"
        puts

    end
    

end