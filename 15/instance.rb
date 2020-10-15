class Animal

    def initialize name
        @name = name
    end

    def introduce
        p "I'm #{@name}"
    end

end

class Cat < Animal

    def initialize name
       super name*2
    end

end 

c1 = Cat.new "Chiko"


c1.introduce