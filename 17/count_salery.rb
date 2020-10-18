out = File.open("salery.txt", "r")
summ = 0
i = 0
l = ""

summ_3 = 0
while (line = out.gets)
    l = line.split(" ")
    summ += l[1].to_i
    i += 1

    summ_3 += l[1].to_i if i < 4 
end

p "total summ = #{summ}"
p "summ for first 3 mouns = #{summ_3}"

out.close