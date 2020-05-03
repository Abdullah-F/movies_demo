require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
  before do
    sign_in_user
  end

  describe '#GET index' do
    it 'returns http success' do
      get :index
      expect(response).to be_successful
    end
  end

  describe '#POST add_rating' do
    let(:movie) do
      director = Director.create name: 'director', birth_date: Time.now  # could use factorybot but it is the only test I'm doing so not worth it.
      Movie.create(name: 'movie_1', release_date: Time.now, censorship: 'G', director: director)
    end
    context 'when success' do
      it 'returns with created status' do
        post :add_rating, params: { id: movie.id , rating: 5 }
        expect(response).to have_http_status(:created)
      end
    end

    context 'when failer' do
      it 'return unprocessable_entity' do
        post :add_rating, params: { id: 'not_valid_id' , rating: 5 }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
