
@a2 = File.open "text.txt", "r"

@hesh ={}
@arrey = []

@a2.each_line do |lin|
    @arrey = @arrey+lin.split(/\n|\s|,/)
end

@arrey.each do |es|
    cnt = @hesh[es].to_i
    cnt = cnt+1
    @hesh[es] = cnt
end

@hesh.each do |kay, value|
    print "#{kay} -- #{value}\n" 
    
end
@a2.close