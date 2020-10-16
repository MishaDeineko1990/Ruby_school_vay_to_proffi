class Animall
    def  initialize
      @name = "dog"
    end

    def run
        p "I run #{@name}"
    end
end

a = Animall.new

a.run

b = Animall.new

b.run