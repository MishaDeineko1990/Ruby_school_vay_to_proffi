class Book 

    def initialize
        @hh = {}
        @last_person = {}
    end

    def add_persson options
        @last_person = {}
        p "Alredy exists" if @hh[options[:name]]
        @hh[options[:name]] = [options[:age], options[:r]]
        @last_person[options[:name]] = [options[:age], options[:r]]
    end

    def show_all
        @hh.keys.each do |key|
            age = @hh[key]

            p "Name #{key} #{age[1]}, age: #{age[0]}"
            
        end
        
    end

    def last_person
        @last_person
    end

end

b = Book.new 
b.add_persson :name => "Walt", :age => 60, :r=> 1
p " last person #{b.last_person}"
b.add_persson :name => "Wili", :age => 50, :r=> 2
b.add_persson :name => "Tom", :age => 40, :r=> 3
p " last person #{b.last_person}"
p "----------"

b.show_all