def my_password_weak? password 

    input = File.open "password.txt", "r"



    while (line = input.gets)
        line.strip!
       
        if (password.include? line)
            return true
        end
   
    end

    
    return false

end

print "get your pasword: "

my_password = gets.strip

if my_password_weak? my_password
    puts "your pasword is not weak"
else
    puts "your password is weak"
    

    
end