require 'rails_helper'


describe 'FastData' do

  describe 'Dogs#gen_dog' do

    include FastData::Dogs
    before { Dog.destroy_all }

    it 'creates a dog' do
      gen_dog()
      expect(Dog.count).to eq 1
    end

    it 'creates multiple dogs' do
      10.times {gen_dog()}
      expect(Dog.count).to eq 10
    end

    it 'returns a dog with defaults and changeable attributes' do
      dog = gen_dog(name: 'Baby')
      expect(dog.name).to eq 'Baby'
    end

  end

  describe 'Cats#gen_cat' do

    include FastData::Cats
    before { Cat.destroy_all }

    it 'creates a cat' do
      gen_cat()
      expect(Cat.count).to eq 1
    end

    it 'creates multiple dogs' do
      10.times {gen_cat()}
      expect(Cat.count).to eq 10
    end

    it 'returns a cat with defaults and changeable attributes' do
      cat = gen_cat(name: 'Sugar')
      expect(cat.name).to eq 'Sugar'
    end

  end

end