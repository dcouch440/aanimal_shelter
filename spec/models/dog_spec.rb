require 'rails_helper'

RSpec.describe Dog, type: :model do
  %i[name breed age gender coat_length size].each do |property|
    it { should validate_presence_of property }
  end
end
