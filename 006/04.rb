num_ten=0
num_eleven=0
num_Twelve=0

1000.times do 

    x=rand 10..12
    
    if x==10
        num_ten=num_ten+1
    elsif x==11
        num_eleven=num_eleven+1
    elsif x==12
        num_Twelve=num_Twelve+1
    end   

end

puts num_ten
puts num_eleven
puts num_Twelve