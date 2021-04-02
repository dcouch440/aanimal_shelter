class Seed

  def self.gen
    Cat.destroy_all()
    Dog.destroy_all()
    seed = Seed.new()
    seed.gen_cats()
    seed.gen_dogs()
  end

  def gen_cats
    FactoryBot.create_list(:cat, 50)
    puts "Created #{Cat.count} Cats"
  end

  def gen_dogs
    FactoryBot.create_list(:dog, 50)
    puts "Create #{Dog.count} dogs"
  end

end

Seed.gen()