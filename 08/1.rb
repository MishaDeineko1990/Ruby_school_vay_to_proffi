puts "Скільки вам років?"
ear = gets.to_i

puts "Чи хочеье ви зіграти? (Y/N)"
start_gases = gets.chomp.downcase.strip

if ear>17 && start_gases=="y"
    puts "Жорошо поиграєм"
    
money = 100


1000.times do
        puts "Введить ентер щоб почати"
        gets
        if money < 1
            puts "До побачення в вас не має грошей"
            exit
            
        end

        money=money-1
        a = rand(0..9)
        b = rand(0..9)
        c = rand(0..9)

        

        10.times do |ii|
            run_number=rand(0..5)
            if ii == 0
                print run_number
            elsif ii < 9 && ii != 0
                print "\r"
                print run_number                
                sleep 0.08
            elsif ii==9
                
                print a
            end
        end    
            
        10.times do |ii|
            run_number=rand(0..5)
            if ii == 0
                print run_number
            elsif ii < 9 && ii != 0
                print "\r"
                print run_number                
                sleep 0.08
            elsif ii==9
                
                print b
            end
        end

        10.times do |ii|
            run_number=rand(0..5)
            if ii == 0
                print run_number
            elsif ii < 9 && ii != 0
                print "\r"
                print run_number                
                sleep 0.08
            elsif ii==9
                
                print c
            end
        end
           
        puts
            
        puts "Випало #{a}#{b}#{c}"


    if a == 0 && b == 0 && c == 0

        puts "ooh fack"

        money = 0
    end

    if a == 1 && b == 1 && c == 1

        puts "clas 111"

        money = money + 10
    end

    if a == 2 && b == 2 && c == 2

        puts "bomb"

        money = money + 20
    end

    if a == 3 && b == 3 && c == 3

        puts "333 yeass"

        money = money + 30
    end

    if a == 4 && b == 4 && c == 4

        puts "thisis supper 444"

        money = money + 40
    end

    if a == 5 && b == 5 && c == 5

        puts "yeas bomb 555"

        money = money + 50
    end


    if a == 6 && b == 6 && c == 6

        puts "yeas bomb 666"

        money = money + 60
    end


    if a == 7 && b == 7 && c == 7

        puts "oho ho 777"

        money = money + 70
    end


    if a == 8 && b == 8 && c == 8

        puts "supper 888"

        money = money + 80
    end


    if a == 9 && b == 9 && c == 9

        puts "mega 999"

        money = money + 90
    end


    puts "На вашому рахунку #{money}"
    puts
    puts

end

else
    puts "До побачення"
end
