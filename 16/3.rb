class Amsimal
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

animal1 = Amsimal.new "cat"

animal1.jump