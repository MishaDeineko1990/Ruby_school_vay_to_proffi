puts "Простий калькулятор"
puts
puts "Введіть чисто А"
a = gets.to_f
puts "Введіть чисто B"
b = gets.to_f
puts "Що потрібно зробити (/, *, +, -)"
does = gets.strip

resault = 0

if does=="/"
    if a==0 || b==0
        puts "На ноль ділити не можна"
        exit
    else
        resault = a / b
    end    
end    

if does=="*"
    resault = a * b
end 

if does=="+"
    resault = a + b
end 

if does=="-"
    resault = a - b
end 

puts "Результат #{resault}"