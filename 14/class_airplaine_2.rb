class Airplene

    attr_reader :model, :speed, :altitude

    def initialize(model)
    @model = model
    @speed = 0
    @altitude = 0
    end

    def fly
        @speed = 800
        @altitude = 10000
    end

    def lend 
        @speed = 800
        @altitude = 0
    end

end

plane1 = Airplene.new('Boing-777')
plane1.fly
p "Model #{plane1.model}, Speed: #{plane1.speed}, Alt #{plane1.altitude}"