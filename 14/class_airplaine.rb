class Airplaine

    attr_reader :model, :altitude, :speed
        
   def initialize (model)
    @model = model
    @speed = 0
    @altitude = 0
    
end
    
    def lend 
        @speed=0
        @altitude=0
    end

    def  fly
        @speed=800
        @altitude=10000
    end

    def moving? 
        @speed>0
    end

end

plane1 = Airplaine.new("Boing 777")
puts "Plane from name #{plane1.model}, he is moving #{plane1.moving?} he have speed #{plane1.speed}"
plane1.fly
puts "Plane from name #{plane1.model}, he is moving #{plane1.moving?} he have speed #{plane1.speed}"
plane1.lend
puts "Plane from name #{plane1.model}, he is moving #{plane1.moving?} he have speed #{plane1.speed}"


models=["Airbus", "Boing", "Antonov"]
planes=[]

1000.times do

    model = models[rand(0..2)]
    plane = Airplaine.new(model)

    if rand(0..1)==1
        plane.fly
    end

    planes<<plane

end

planes.each_with_index do |plane, i|

    puts "#{i}: Plane from name #{plane.model}, he is moving #{plane.moving?} he have speed #{plane.speed}"

    
end
