puts "Я загадав число (1..100) Вгадай"

num = rand(1..10)
1.upto(10) do |i|

    puts "Спроба № #{i} залишилось #{10-i+1}"
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