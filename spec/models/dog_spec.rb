require 'rails_helper'

describe Dog, type: :model do

  include FastData::Dogs

  %i[name breed age gender coat_length size].each do |property|
    it { should validate_presence_of property }
  end

  context 'when there are dogs' do

    before { Dog.destroy_all }
    after { Dog.destroy_all }

    it 'returns the total number of puppies' do
      10.times {gen_dog(age: 'Puppy')}
      expect(Dog.puppies).to eq 10
    end

    it 'returns the total number of adults' do
      10.times {gen_dog(age: 'Adult')}
      expect(Dog.adults).to eq 10
    end

    it 'returns the total number of seniors' do
      10.times {gen_dog(age: 'Senior')}
      expect(Dog.seniors).to eq 10
    end

    it 'returns the time of creation in plain english' do
      FactoryBot.create(:dog)
      expect(Dog.first.time_at_shelter).to eq 'less than a minute'
    end

  end

  context 'When there are no dogs' do

    before { Dog.destroy_all }
    after { Dog.destroy_all }

    it 'should have zero puppies' do
      expect(Dog.puppies).to eq 0
    end

    it 'should have zero adults' do
      expect(Dog.adults).to eq 0
    end

    it 'should have zero seniors' do
      expect(Dog.seniors).to eq 0
    end

  end

end
