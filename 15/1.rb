class Airoport
    attr_reader :name
    attr_reader :planes

    def initialize (name)
        @name = name
        @planes = []
    end

    def add_plane plane
        @planes << plane
    end
end

class Plane
    attr_reader :model

    def initialize (model)
        @model = model
    end
end

#created Airoport

airports = []

airport1 = Airoport.new "Borispol"
airport2 = Airoport.new "Zhulianu"






#Created planes for airport1

plane1 = Plane.new "Boieng-777"
plane2 = Plane.new "AN 125"

# Add planes in airoport

airport1.add_plane plane1
airport1.add_plane plane2







#Created planes for airport1

plane1_1 = Plane.new "Boieng-555"
plane2_2 = Plane.new "AN 2"

# Add planes in airoport

airport2.add_plane plane1_1
airport2.add_plane plane2_2




#add airoports to arr

airports << airport1
airports << airport2


puts airports[1]