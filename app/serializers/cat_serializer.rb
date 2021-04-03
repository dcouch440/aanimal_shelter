class CatSerializer

  def initialize(cats)
    @cats = cats
  end

  def serialized_cats_with_statistics
    cats_statistics()
  end

  private def cats_statistics
    {
      cats: serialize_each_cat(),
      statistics: serialize_statistics()
    }
  end

  private def serialize_each_cat
    if is_many?()
      @cats.map { |cat|  serialize_cats(cat) }
    else
      serialize_cats(@cats)
    end
  end

  private def is_many?
    @cats.is_a?(ActiveRecord::Relation)
  end

  private def serialize_cats(cat)
    {
      name: cat.name,
      breed: cat.breed,
      age: cat.age,
      gender: cat.gender,
      coat_length: cat.coat_length,
      size: cat.size,
      id: cat.id,
      arrival: cat.time_at_shelter()
    }
  end

  private def serialize_statistics
    {
      total: Cat.total_cats(),
      kittens: Cat.kittens(),
      adults: Cat.adults(),
      seniors: Cat.seniors()
    }
  end

end