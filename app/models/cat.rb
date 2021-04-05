class Cat < ApplicationRecord

  validates *%i[name breed age gender coat_length size],
    presence: true

  before_save *%i[
    capitalize_age
    capitalize_gender
    capitalize_breed
    capitalize_name
    downcase_length
    downcase_size
  ]

  scope :total_cats, -> { Cat.count }
  scope :kittens, -> { where(age: 'Kitten').count }
  scope :adults, -> { where(age: 'Adult').count }
  scope :seniors, -> { where(age:'Senior').count }

end
