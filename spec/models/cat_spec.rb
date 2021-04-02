require 'rails_helper'

RSpec.describe Cat, type: :model do
  include FastData

  %i[name breed age gender coat_length size].each do |property|
    it { should validate_presence_of property }
  end

  it 'returns the total number of cats' do
    FactoryBot.create_list(:cat, 10)
    expect(Cat.total_cats).to eq 10
  end

  it 'returns the total number of kittens' do
    10.times {gen_cat(age: 'Kitten')}
    expect(Cat.kittens).to eq 10
  end

  it 'returns the total number of adults' do
    10.times {gen_cat(age: 'Adult')}
    expect(Cat.adults).to eq 10
  end

  it 'returns the total number of seniors' do
    10.times {gen_cat(age: 'Senior')}
    expect(Cat.seniors).to eq 10
  end

  context 'When there are no cats' do
    [Cat.kittens, Cat.adults, Cat.seniors].each do |query|
      it 'should have contents of zero' do
        expect(query).to eq 0
      end
    end
  end

end
