require 'rails_helper'

RSpec.describe Movies::AddRating, type: :interactor do
  describe 'call' do
    context 'when success' do
      let(:movie) { instance_double('Movie', id:5) }
      let(:user){ User.new(id: 5) }
      it 'returns success' do
        expect(Movie).to receive(:find){ movie }
        expect(movie).to receive(:user_ratings){ nil }
        expect(movie).to receive(:movie_ratings) { [] }
        result = described_class.call(id: movie.id, current_user: user)
        expect(result.success?).to be true
      end
    end

    context 'when failuer' do
      it 'it returns with errors' do
        expect(Movie).to receive(:find){ raise ActiveRecord::RecordNotFound }
        result = described_class.call
        expect(result.errors).to be_present
      end
    end
  end
end
