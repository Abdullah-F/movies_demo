require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it 'has_many movie_ratings' do
      expect(subject.respond_to?(:movie_ratings)).to be true
    end
  end
end
