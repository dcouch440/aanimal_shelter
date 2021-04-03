require 'rails_helper'

describe 'statistical dogs json data', :type => :request do

  let!(:cats) { FactoryBot.create_list(:cat, 20) }

  describe '#index' do

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

  describe '#show' do

    before do
      get v1_cat_path(cats.first.id)
      @res = JSON.parse(response.body)['statistics']
    end

    ['total', 'kittens', 'adults', 'seniors'].each do |attr|

      it "should include #{attr} data" do
        expect(@res[attr]).not_to eq(nil)
      end

    end

  end

end