require './hero'

describe Hero do 

    it 'has a capitalize name' do
        hero = Hero.new 'mike'
        expect(hero.name).to eq 'Mike'
    end

    it 'health_up is fine' do
        hero = Hero.new 'mike'
        expect(hero.health_up).to eq 110
    end

    it 'health_down is fine' do
        hero = Hero.new 'mike'
        expect(hero.health_down).to eq 90
    end

    it 'health_info is fine' do
        hero = Hero.new 'mike'
        expect(hero.hero_info).to eq 'Mike has a health of 100'
    end

end

# $ rspec hero_spec.rb