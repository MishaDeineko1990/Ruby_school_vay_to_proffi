input = File.open "password.txt", "r"

password = gets.strip!

while (line = input.gets)

    if (line.strip==password)
        puts "Youre password is weak"
        exit
    end
  

end

puts "you're password is not weak"