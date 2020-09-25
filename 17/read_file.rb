input = File.open "test.txt", "r"

while (line = input.gets)
    if line.strip==""
        puts "-------"
    else   
        puts line
    end    
end 
input.close