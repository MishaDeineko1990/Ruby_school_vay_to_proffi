
class Animal
    def stop
        
        puts "#{@name} is stop"
    end


    def run
        @name = "dog"
        puts "#{@name} is run"
    end
end

a = Animal.new


a.stop
a.run
a.stop
