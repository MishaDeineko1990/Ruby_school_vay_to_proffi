input = File.open "salery.txt", "r"
tottal = 0
while (line = input.gets)
    l1=line.split(",")
    tottal = tottal + l1[1].strip.to_i
end 

puts "total salery equal #{tottal}"


input.close