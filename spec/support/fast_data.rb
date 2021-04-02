module FastData

  module Dogs
    def gen_dog(
      name: 'George',
      breed: 'Pug',
      age: 'Senior',
      gender: 'Male',
      coat_length: 'short',
      size: 'medium'
    )
      Dog.create(name: name,breed: breed,age: age,gender: gender,coat_length: coat_length, size: size)
    end
    def dog_hash
      {
        name: 'George',
        breed: 'Pug',
        age: 'Senior',
        gender: 'Male',
        coat_length: 'short',
        size: 'medium'
      }
    end
  end

  module Cats
    def gen_cat(
      name: 'Misty',
      breed: 'Oriental Shorthair',
      age: 'Senior',
      gender: 'Female',
      coat_length: 'medium',
      size: 'extra large'
    )
      Cat.create(name: name,breed: breed,age: age,gender: gender,coat_length: coat_length, size: size)
    end
    def cat_hash
      {
        name: 'Misty',
        breed: 'Oriental Shorthair',
        age: 'Senior',
        gender: 'Female',
        coat_length: 'medium',
        size: 'extra large'
      }
    end
  end

end