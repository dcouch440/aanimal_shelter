class ApplicationRecord < ActiveRecord::Base

  include ActionView::Helpers::DateHelper

  self.abstract_class = true

  def time_at_shelter
    time_ago_in_words(self.created_at)
  end

  private
  def capitalize_name; self.name = self.name.capitalize end
  def capitalize_breed; self.breed = self.breed.capitalize end
  def capitalize_age; self.age = self.age.capitalize end
  def capitalize_gender; self.gender = self.gender.capitalize end
  def downcase_length; self.coat_length = self.coat_length.downcase end
  def downcase_size; self.size = self.size.downcase end

end
