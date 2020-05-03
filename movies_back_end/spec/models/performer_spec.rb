require 'rails_helper'

RSpec.describe Performer, type: :model do
  describe '#columns' do
    subject { described_class.column_names }
    it { is_expected.to include('name') }
    it { is_expected.to include('birth_date') }
  end

  describe 'associations' do
    it 'has many movies' do
      expect(subject.respond_to?(:movies)).to be true
    end
    it 'has_many news' do
      expect(subject.respond_to?(:news)).to be true
    end

    it 'has_many awards' do
      expect(subject.respond_to?(:awards)).to be true
    end
  end
end
