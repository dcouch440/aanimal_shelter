class CatSerializer

  def initialize(cats)
    @cats = cats
  end

  def serialized_cats_with_statistics
    cats_statistics()
  end

  private def cats_statistics
    {
      cats: @cats,
      statistics: create_statistics()
    }
  end

  private def create_statistics
    {
      total: Cat.total_cats(),
      kittens: Cat.kittens(),
      adults: Cat.adults(),
      seniors: Cat.seniors()
    }
  end

end