class CatSerializer

  def initialize(cats:)
    @cats = cats
  end

  def serialized_cats_with_statistics
    cats_statistics_hash().to_json()
  end

  private def cats_statistics_hash
    {
      cats: serialized_cats(),
      statistics: serialized_statistics()
    }
  end

  private def serialized_cats
    @cats.to_json()
  end

  private def serialized_statistics
    create_statistics().to_json()
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