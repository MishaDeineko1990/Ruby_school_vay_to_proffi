class Airport 

    attr_reader :name, :airplanes

    def initialize airport
        @name=airport
        @airplanes = []
    end

    def add_airplane airplane 
        airplanes<<airplane
    end

end

class Airplane 

    attr_reader :name

    def initialize airplane
        @name=airplane
    end
                                                                        
end


planes = ["Antonov", "Airbus", "Boing"]

a1 = Airport.new "BOrispil"
a2 = Airport.new "Zhulianu"

ap = [a1, a2]
p_a1 = []
p_a1 = []

100.times do 
    p_a1 << Airplane.new "#{planes[rand(0..2)]}"
    a1.add_airplane(planes[rand(0..2)])
end


10.times do 
    a2.add_airplane(planes[rand(0..2)])
    p_a2 << Airplane.new "#{planes[rand(0..2)]}"
end

# ap.each do |ap_a|
#     p "Airport  #{ap_a.name} has #{ap_a.airplanes.size}"
    
#     ap_a.airplanes.each_with_index do |value, i|
#        p "#{i+1}  #{value}"
#     end
#     p "----------------"
#     p "                 "
# end

p "#{p_a2}"

