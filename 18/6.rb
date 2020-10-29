input = File.open "passwords.txt", "r"


print "write tour password "
 myr = gets.strip!

while line=input.gets
    line.strip!
    if myr.include? line
        p "your pasword is not weeak"
        exit
         
    end

end
p "all fine"
