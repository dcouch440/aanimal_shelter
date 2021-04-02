class Cat < ApplicationRecord
  validates *%i[name breed age gender coat_length size], presence: true
end
