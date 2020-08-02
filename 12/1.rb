hh = {}

hh [:a] = 1 

hh [:b] = 2 

hh [:c] = 3 

hh [:d] = 4 

hh2={:a=>1,:b=>2,:c=>3,:d=>4,:e=>5}

puts "valyes hesh #{hh.values}"

puts

puts "keys hesh #{hh.keys}"

puts "======================="

n_value = 0
n_value2 = 0

hh.each_value do ||
    n_value = n_value+1 
end


puts n_value

puts "hh3 nums values equal"

hh2.each_value do ||
    n_value2 = n_value2+1 
end

puts n_value2

puts "keys hesh2  #{hh2.keys}"
