puts "Я загадав число (1..100) Вгадай"

num = rand(1..100)
1.upto(100) do |i|

    puts "Спроба № #{i}"
    a=gets.to_i
    if a==num

        puts "Вгадав молодець!"
        exit
    elsif a<num
        puts "Ні воно більше"
    elsif a>num
        puts "Ні воно менше"
    end
    puts

end