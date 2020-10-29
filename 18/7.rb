


def is_fine?
    input = File.open "passwords.txt", "r"



    print "write tour password "
    myr = gets.strip!

    while line=input.gets
        line.strip!
        if myr.include? line
            return false
            exit
            
        end

    end
    return true
end

if is_fine?
    p "all fine"
else 
    p "you password is not fine"
end