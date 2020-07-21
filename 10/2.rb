arr = %w[white red black yallow purple pink blue green grey gold silver]

loop do 
    x=1
    arr.each do |color|
        puts "#{x}: #{color}"
        x=x+1
    end
    puts
    puts "What remuve"
    n=gets.to_i
    puts
    arr.delete_at n-1

    if arr.size<1
        puts "good buy. You more dont have colors"
        exit 
    end

end 