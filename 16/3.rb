class Animal
    def initialize name

        @name = name

    end

    def jump 
        puts "#{@name} is jump"
    
        eat
        sleep
    
    end

    private 

    def eat
        puts"#{@name} is eat"
    end

    def sleep
        puts"#{@name} is sleap"
    end

end

animal1 = Animal.new "cat"



class Dog < Animal
    def initialize name 
        @name = name
    end

    def brak 
        puts "#{@name} Woof Woof"
        eat
        sleep
    end
end

# animal1.jump

animal2 = Dog.new "Tinga"

animal2.brak