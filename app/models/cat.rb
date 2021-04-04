class Cat < ApplicationRecord

  validates *%i[name breed age gender coat_length size], presence: true

  scope :total_cats, -> { Cat.count }
  scope :kittens, -> { where(age: 'Kitten').count }
  scope :adults, -> { where(age: 'Adult').count }
  scope :seniors, -> { where(age:'Senior').count }

  def time_at_shelter
    time_ago_in_words(self.created_at)
  end

end
