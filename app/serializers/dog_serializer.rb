class DogSerializer

  def initialize(dogs)
    @dogs = dogs
  end

  def serialized_dogs_with_statistics
    dogs_statistics()
  end

  private def dogs_statistics
    {
      dogs: serialize_each_dog(),
      statistics: serialize_statistics()
    }
  end

  private def serialize_each_dog
    if is_many?()
      @dogs.map { |dog|  serialize_dogs(dog) }
    else
      serialize_dogs(@dogs)
    end
  end

  private def is_many?
    @dogs.is_a?(ActiveRecord::Relation)
  end

  private def serialize_dogs(dog)
    {
      id: dog.id,
      name: dog.name,
      breed: dog.breed,
      age: dog.age,
      gender: dog.gender,
      coat_length: dog.coat_length,
      size: dog.size,
      created_at: dog.created_at,
      updated_at: dog.updated_at,
      arrival: dog.time_at_shelter()
    }
  end

  private def serialize_statistics
    {
      total: Dog.total_dogs(),
      puppies: Dog.puppies(),
      adults: Dog.adults(),
      seniors: Dog.seniors()
    }
  end

end