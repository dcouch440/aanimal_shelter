require 'rails_helper'

describe 'Cat' do

  let!(:cats) { FactoryBot.create_list(:cat, 10) }

  describe 'GET #index', :type => :request do

    before do
      get v1_cats_path
      @parse = JSON.parse(response.body)
    end

    it 'returns all cats' do
      expect(@parse['cats'].length).to eq(10)
    end

    it 'returns status code of 200' do
      expect(response).to have_http_status(:success)
    end

  end

  describe 'GET #show', :type => :request do

    let!(:dog) { cats.first }

    context 'when successful' do

      before do
        get v1_cat_path(dog)
        @parse = JSON.parse(response.body)
      end

      it 'returns a dog' do
        expect(@parse['cats']['id']).to eq dog.id
      end

      it { expect(response).to have_http_status :success }

    end

    context 'when unsuccessful' do

      before { get v1_dog_path(cats.last.id + 1) }

      it { expect(response).to have_http_status :not_found}

    end

  end
end