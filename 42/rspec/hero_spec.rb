require './hero'

describe Hero do 

    before do
        @hero = Hero.new 'mike'
    end

    it 'has a capitalize name' do        
        expect(@hero.name).to eq 'Mike'
    end

    it 'health_up is fine' do
        expect(@hero.health_up).to eq 110
    end

    it 'health_down is fine' do
        expect(@hero.health_down).to eq 90
    end

    it 'health_info is fine' do
        expect(@hero.hero_info).to eq 'Mike has a health of 100'
    end

end

# $ rspec hero_spec.rb