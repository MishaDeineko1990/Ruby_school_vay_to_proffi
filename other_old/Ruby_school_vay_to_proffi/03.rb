puts "How many $ You can save in months"
mony = gets.to_f

puts "How many months you will do this"
months = gets.to_i

1.upto(months)do |mm|
    puts "in #{mm} you will have #{money*mm} $"
end