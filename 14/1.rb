
class Animal
    def initialize 
        @name = "dog"
    end

    def stop name
        puts "#{name} is stop"
    end


    def run        
        puts "#{@name} is run"
    end
end

a = Animal.new



a.stop
a.run
a.stop

a.stop "cat"
