require 'rails_helper'

describe 'Dogs' do

  let!(:dogs) { FactoryBot.create_list(:dog, 10) }

  describe 'Get #index', :type => :request do

    before do
      get v1_dogs_path
      @parse = JSON.parse(response.body)
    end

    it 'returns all dogs' do
      expect(@parse['dogs'].length).to eq(10)
    end

    it 'returns status code of 200' do
      expect(response).to have_http_status(:success)
    end

  end

  describe '#show', :type => :request do
    let!(:dog) { dogs.first }

    context 'when successful' do
      before do
        get v1_dog_path(dog)
        @parse = JSON.parse(response.body)
      end

      it 'returns a dog' do
        expect(@parse['dogs']['id']).to eq dog.id
      end

      it { expect(response).to have_http_status :success }
    end

    context 'when unsuccessful' do
      before { get v1_dog_path(dogs.last.id + 1) }
      it { expect(response).to have_http_status :not_found}
    end

  end
end