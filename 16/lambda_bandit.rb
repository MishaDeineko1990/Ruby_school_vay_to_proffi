add_10 = lambda {|x| x+10}
add_20 = lambda {|x| x+20}
sub_30 = lambda {|x| x-30}

balance = 1000
hh = {111 => add_10, 222 => add_10, 333 => add_10, 444 => add_20, 555 => add_20, 666 => sub_30, 777 => sub_30, 888 => sub_30, 999 => sub_30}




loop do 
    rrand = rand(100..1000)
    if hh[rrand]
        balance = hh[rrand].call balance
    end
    p "Show #{rrand}"
    p "puts enter for continue"
    p "dalance = #{balance}"
    gets
end