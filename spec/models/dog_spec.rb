require 'rails_helper'

RSpec.describe Dog, type: :model do
  include FastData::Dogs

  %i[name breed age gender coat_length size].each do |property|
    it { should validate_presence_of property }
  end

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

  context 'When there are no dogs' do
    [Dog.puppies, Dog.adults, Dog.seniors].each do |query|
      it 'should have contents of zero' do
        expect(query).to eq 0
      end
    end
  end

end
