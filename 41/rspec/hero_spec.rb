require './hero'

describe Hero do 

    it 'has a capitalize name' do
        hero = Hero.new 'mike'
        expect(hero.name).to eq 'Mike'
    end

    it 'has a capitalize name' do
        hero = Hero.new 'mike'
        expect(hero.health_up).to eq 110
    end

end

# $ rspec hero_spec.rb