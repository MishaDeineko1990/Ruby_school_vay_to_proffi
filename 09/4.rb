@move = [:left, :right, :up, :down]


actions =
	{
	    :left => puts "left", 
        :right => puts "right", 
        :up => puts "up", 
        :down => puts "down"
    }



1000.times do 

    puts "Введіть ентер щоб робот почав рухатися"
    gets


    rand_n = @move[rand(@move.size)]


    if actions.has_key?(rand_n)
        
        puts "#{actions[rand_n].call(actions[rand_n][0])"
        
    end

end

