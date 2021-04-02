require 'rails_helper'

RSpec.describe Cat, type: :model do
  %i[name breed gender coat_length size].each do |property|
    it { should validate_presence_of property }
  end
end
