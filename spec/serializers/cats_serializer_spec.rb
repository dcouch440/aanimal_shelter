require 'rails_helper'

describe 'statistical dogs json data', :type => :request do

  let!(:cats) { FactoryBot.create_list(:cat, 20) }

  before do
    get v1_cats_path
    @res = JSON.parse(response.body)['statistics']
  end

  ['total', 'kittens', 'adults', 'seniors'].each do |attr|
    it "should include #{attr} data" do
      expect(@res[attr]).not_to eq(nil)
    end
  end

end