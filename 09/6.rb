
answers = []

while true do
    puts "Введіть ваш улюбленний колір"
answer=gets.chomp.capitalize

if answer=="N"
    puts
    puts "List you love colors:"
    puts answers
    exit
else
    answers << answer
end

end