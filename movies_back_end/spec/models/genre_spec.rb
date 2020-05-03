require 'rails_helper'

RSpec.describe Genre, type: :model do
  describe '#columns' do
    subject { described_class.column_names }
    it { is_expected.to include('genre_type') }
  end

  describe '#enums' do
    describe '#genre_types' do
      it 'has pre-defined geners' do
        expect(described_class.genre_types.to_h.keys).to contain_exactly(
          'horror',
          'action'
        )
      end
    end
  end

  describe '#associations' do
    it 'belongs_to a movie' do
      expect(subject.respond_to?(:movie)).to be true
    end
  end
end
