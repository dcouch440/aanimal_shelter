class DogSerializer

  def initialize(dogs)
    @dogs = dogs
  end

  def serialized_dogs_with_statistics
    dogs_statistics()
  end

  private def dogs_statistics
    {
      dogs: @dogs,
      statistics: create_statistics()
    }
  end

  private def create_statistics
    {
      total: Dog.total_dogs(),
      seniors: Dog.seniors(),
      adults: Dog.adults(),
      puppies: Dog.puppies()
    }
  end

end