class Animall 
    def initialize(speack)
      @speack = speack
    end

    def say
        @speack
    end
end

an1=Animall.new "woff" 

class Supper_animal < Animall
    def initialize mm, m_do
        @mk_do = m_do
    end

    def make_do
        @mk_do
    end
end

an2=Supper_animal.new "Miau", "amy mouse"

puts " #{an2.say}"

puts " #{an2.make_do}"