# ==================
# 1. static method 
# ==================

class Man 
    def self.say_hallo
        puts "Hallo"
    end
end

puts "1."

Man.say_hallo

# =================
# 2.
# =================

class Maneger 
    def self.say_hi
        puts "Hi"
    end
end
class Hipster 
    def self.say_hi
        puts "Hiiii"
    end
end
class Jesy_pincman
    def self.say_hi
        puts "Hi biach"
    end
end

puts "2."

Maneger.say_hi
Hipster.say_hi
Jesy_pincman.say_hi



# ====================
# 3.
# ====================
puts "3."

class Random_engin

    def self.get_random_engine x, y
        rand(x..y)
    end
end

class Game_engine
    def self.srart_game_engin x, y
        puts "#{Random_engin.get_random_engine(x, y)}"
    end
end

Game_engine.srart_game_engin(100,110) 
