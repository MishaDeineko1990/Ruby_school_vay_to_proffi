

 
 @mape = [
        ["-","-","-"],
        ["-","-","-"],
        ["-","-","-"]
    ]


    @caunts_wins_player1 = 0
    @caunts_wins_player2 = 0















    def arr_chek_pos

        @win_arr_pos=[
            [
                @mape[0][0],
                @mape[0][1],
                @mape[0][2]
            ],
            [
                @mape[1][0],
                @mape[1][1],
                @mape[1][2]
            ],
            [
                @mape[2][0],
                @mape[2][1],
                @mape[2][2]
            ],








            [
                @mape[0][0],
                @mape[1][0],
                @mape[2][0]
            ],

            [
                @mape[0][1],
                @mape[1][1],
                @mape[2][1]
            ],

            [
                @mape[0][2],
                @mape[1][2],
                @mape[2][2]
            ],









            [
                @mape[0][0],
                @mape[1][1],
                @mape[2][2]
            ],
            [
                @mape[0][2],
                @mape[1][1],
                @mape[2][0]
            ]
        ]
    end


















    def game

        loop do

            def check_on_wins symb
                @win_arr_pos.each do |item|
                    
                    if item[0]==symb &&  item[1]==symb && item[2]==symb
                                
                        if symb=="x"
                            puts "Win player 1"
                            @caunts_wins_player1 = @caunts_wins_player1+1
                        end

                        if symb=="o"
                            puts "Win player 2"
                            @caunts_wins_player2 = @caunts_wins_player2 + 1

                        end

                        puts "if you want play agayn pus (y)"
                        play_again = gets.chomp.downcase
        
                        if play_again=="y"
        
                            @mape = [
                                ["-","-","-"],
                                ["-","-","-"],
                                ["-","-","-"]
                            ]
                            

                            
        
                            game
        
                        else 
                            puts "finish game"
                            exit
                        end
        

                    end



                
                end
            end


            def write_map
                @mape.each_with_index do |item, i|
                    
                    item.each_with_index do |item, ii|
                
                        puts "" if ii==0 && i!=0
                
                        if item=="-"
                            print "\t-"
                        elsif item=="x" 
                            print "\tx"
                        elsif  item=="o"
                            print "\to"
                        end
                    end
                    
                    puts

                end



                puts
                puts "count in play equal plaler1: #{@caunts_wins_player1}  plaler2: #{@caunts_wins_player2}"
                puts

            end
            
            write_map
            
            def ride_player_1
                puts "ride player 1"

                
                
                print " put x (from 1 to 3): "
                pos_x= gets.to_i
                print " put y (from 1 to 3): "
                pos_y= gets.to_i
                
                
                def write_step pos_x, pos_y, move_f   
                    if @mape[pos_x-1][pos_y-1]==move_f[0]
                        @mape[pos_x-1][pos_y-1]=move_f[1]
                    end
                end

                
                move_f= ["-","x"]

                write_step pos_x, pos_y, move_f 


                write_map
                arr_chek_pos
                check_on_wins 'x'
            end

            ride_player_1

            def ride_player_2
                puts "ride player 2"
                
                

                print " put x (from 1 to 3): "
                pos_x= gets.to_i
                print " put y (from 1 to 3): "
                pos_y= gets.to_i

                move_f= ["-","o"]

                write_step pos_x, pos_y, move_f 
                write_map
                arr_chek_pos
                check_on_wins 'o'
            end

            ride_player_2

        end

    end

game
    

