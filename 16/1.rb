class Animal
    def initialize lasson1, lasson2
        @a = lasson1
        @b = lasson2
        @arr = []
        @hh = {}
    end

    def lang
        @a
    end
    
end

@animal = Animal.new "English", "Computere-sinse"


class Dog

    def initialize ll
        @speack_eng = ll
    end
    
    def speack
        puts "gav"
        puts "Wof on #{@speack_eng.lang}"
    end

end

dog = Dog.new @animal 
dog.speack
