count=[0, 0] 

loop do
        puts "Chouse from k,n,b"

        y_ch = gets.strip.downcase
        rn = rand(3)
        arr_g = %w[k n b]
        r_ch = arr_g[rn].to_s
       
        if y_ch=="k"||"n"||"b"
            if (y_ch=="k" && r_ch == "n") || (y_ch=="n" && r_ch == "b") ||(y_ch=="b" && r_ch == "k")
                count[0]=count[0].to_i+1
                puts "you_win counts equal #{count[0]} : #{count[1]}"
            elsif y_ch == r_ch
                puts "Нічья"
            else
                count[1]=count[1].to_i+1
                puts "comp_win counts equal #{count[0]} : #{count[1]}"
            end

        end
    end