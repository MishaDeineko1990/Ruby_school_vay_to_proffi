a = 12
b = 13

a , b = b , a

puts "#{a} - #{b}"

a=a+b
b=a-b
a=a-b


puts "#{a} - #{b}"


arr = [1, 2, 3] 

arr = arr.permutation(2).to_a