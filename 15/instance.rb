class Animal

    def initialize name
        @name = name
    end

    def introduce
        p "I'm #{@name}"
    end

end

class Cat < Animal



end 

c1 = Cat.new "Joninyo"

c1.introduce