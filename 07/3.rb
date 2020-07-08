puts "Скільки раз будемо грати"
nn = gets.to_i

1.upto(nn) do |np|
    if rand(1..50)==1
        puts "Спроба № #{np}.Ви виграли"
        exit
    else
        puts "Спроба № #{np}.Спробуйте ще"    
    end
end

