class Book

    def initialize
        @hh={}
        @last_person=""
    end

    def add_person options
        puts "Alredy exists!" if @hh[options[:name]]
        @hh[options[:name]]=options[:age]
        @lasst_person=options[:name]
    end

    def show_all
        @hh.keys.each do |key|
            age=@hh[:key]
            puts "Name #{key}, age: #{age}"
        end
    end

    def def_last_person
        @last_person
    end
    

    
end

b = Book.new
b.add_person :name =>  "Misha", :age => 30
b.add_person :name =>  "Natalia", :age => 30
b.add_person :name =>  "Alla", :age => 53
b.show_all
puts "Last person what you write in phone book is #{b.def_last_person}"