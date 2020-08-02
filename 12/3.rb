hh = {
    "111"=>10,
    "222"=>20,
    "333"=>30,
    "444"=>40,
    "555"=>50,
    "666"=>0,
    "777"=>70,
    "888"=>80,
    "999"=>9    
}

balance = 100

while true
    puts "Press enter for play"
    gets

    a = rand(100..999).to_s


    if hh[a] && hh[a]=="666" || hh[a]=="999"
        balance *= hh[a]
    elsif hh[a]
        balance+=hh[a]
    end

    balance-=2

    if balance<=1
        puts "гру закінчено "
        exit
    end

  

    puts "випало #{a}. баланс #{balance}"

end    