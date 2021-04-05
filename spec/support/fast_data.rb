module FastData

  module Dogs

    def gen_dog(options = {}, props = dog_hash())
      Dog.create(props.merge(options))
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

    def gen_cat(options = {}, props = cat_hash())
      Cat.create(props.merge(options))
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