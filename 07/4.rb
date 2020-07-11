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

        a = rand(0..5)
        b = rand(0..5)
        c = rand(0..5)
        
    if a == 0 && b == 0 && c == 0

        puts "ooh"

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

    puts "На вашому рахунку #{money}"
    puts
    puts

end

else
    puts "До побачення"
end