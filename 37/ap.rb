aa = File.open "text.txt", "r"

@hh = {}

@arr = []

aa.each_line do |line|

    @arr = @arr + line.split(/\s|\n|,/)

        

end

@arr.each do |ar|
    cnt = @hh[ar].to_i
    cnt = cnt+1
    @hh[ar]= cnt
end

p @hh