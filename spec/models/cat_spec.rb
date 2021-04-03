require 'rails_helper'

describe Cat, type: :model do

  include FastData::Cats

  %i[name breed age gender coat_length size].each do |property|
    it { should validate_presence_of property }
  end

  context 'when there is cats' do

    before { Cat.destroy_all }
    after { Cat.destroy_all }

    it 'returns the total number of cats' do
      FactoryBot.create_list(:cat, 10)
      expect(Cat.total_cats).to eq 10
    end

    it 'returns the total number of kittens' do
      10.times { gen_cat(age: 'Kitten') }
      expect(Cat.kittens).to eq 10
    end

    it 'returns the total number of adults' do
      10.times { gen_cat(age: 'Adult') }
      expect(Cat.adults).to eq 10
    end

    it 'returns the total number of seniors' do
      10.times {gen_cat(age: 'Senior')}
      expect(Cat.seniors).to eq 10
    end

    it 'returns the time of creation in plain english' do
      FactoryBot.create(:cat)
      expect(Cat.first.time_at_shelter).to eq 'less than a minute'
    end

  end

  context 'When there are no cats' do

    before { Cat.destroy_all }
    after { Cat.destroy_all }

    it 'should have zero kittens' do
      expect(Cat.kittens).to eq 0
    end

    it 'should have zero adults' do
      expect(Cat.adults).to eq 0
    end

    it 'should have zero seniors' do
      expect(Cat.seniors).to eq 0
    end

  end

end
