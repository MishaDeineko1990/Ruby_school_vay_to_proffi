puts "Скільки вам років?"
ear = gets.to_i

puts "Чи хочеье ви зіграти? (Y/N)"
start_gases = gets.chomp.downcase.strip

if ear>17 && start_gases=="y"
    puts "гра починається"
    
else
    puts "До побачення"
end

    