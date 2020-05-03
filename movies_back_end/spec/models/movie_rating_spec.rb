require 'rails_helper'

RSpec.describe MovieRating, type: :model do
  describe 'columns' do
    subject { described_class.column_names }
    it { is_expected.to include('rating') }
  end

  describe '#associations' do
    it 'belongs_to a movie' do
      expect(subject.respond_to?(:movie)).to be true
    end
    it 'belongs_to a user' do
      expect(subject.respond_to?(:user)).to be true
    end
  end
end
