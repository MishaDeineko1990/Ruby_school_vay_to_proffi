input = File.open "passwords.txt", "r"


print "write tour password "
 myr = gets.strip!

while line=input.gets
    line.strip!
    if line==myr
        p "your pasword is not weeak"
        exit
         
    end

end
p "all fine"