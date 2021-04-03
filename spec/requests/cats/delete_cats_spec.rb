require 'rails_helper'

describe 'Cat' do

  describe '#destroy', :type => :request do

    let!(:cat) { FactoryBot.create(:cat) }

    context 'when successful' do

      it 'deletes a cat' do
        delete v1_cat_path(cat.id)
        expect(response).to have_http_status :no_content
      end

    end

    context 'when unsuccessful' do

      it 'return a 404' do
        delete v1_cat_path(cat.id + 1)
        expect(response).to have_http_status :not_found
      end

    end

  end

end