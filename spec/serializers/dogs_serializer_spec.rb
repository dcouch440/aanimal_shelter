require 'rails_helper'

describe 'statistical dogs json data', :type => :request do

  let!(:dogs) { FactoryBot.create_list(:dog, 20) }

  describe '#index' do

    before do
      get v1_dogs_path
      @res = JSON.parse(response.body)['statistics']
    end

    ['total', 'puppies', 'adults', 'seniors'].each do |attr|

      it "should include #{attr} data" do
        expect(@res[attr]).not_to eq(nil)
      end

    end

  end

  describe '#show' do

    before do
      get v1_dog_path(dogs.first.id)
      @res = JSON.parse(response.body)['statistics']
    end

    ['total', 'puppies', 'adults', 'seniors'].each do |attr|

      it "should include #{attr} data" do
        expect(@res[attr]).not_to eq(nil)
      end

    end

  end

end