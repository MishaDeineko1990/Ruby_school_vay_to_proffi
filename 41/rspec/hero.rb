class Hero

    def initialize(name, health=100)
        @name = name.capitalize 
        @health = health
    end

    def name
        @name
    end

    def health_up
        @health += 10
    end

    def health_down 
        @health -= 10
    end

    def hero_info
        "#{name} has a health of #{@health}"
    end
end

hero = Hero.new 'mike'
p hero.name 
p hero.health_up
p hero.health_down
p hero.hero_info 