require 'rails_helper'

describe 'Dog' do
  include FastData::Dogs
  let!(:dog) { FactoryBot.create(:dog) }

  describe '#update', :type => :request do

    context 'when successful' do

      before do
        patch v1_dog_path(dog.id), params: dog_hash()
        @parse = JSON.parse(response.body)
      end

      it 'sets the data correctly' do
        dog_hash().entries do |key, val|
          expect(@parse[key]).to eq val
        end
      end

      it 'returns a value of 200' do
        expect(response).to have_http_status :created
      end

    end

    context 'when unsuccessful' do

      it 'return a value of 422' do
        patch v1_dog_path(dog.id), params: {name: ""}
        expect(response).to have_http_status :unprocessable_entity
      end

    end

  end

end