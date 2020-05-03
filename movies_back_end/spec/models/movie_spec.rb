require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe '#columns' do
    subject { described_class.column_names }
    it { is_expected.to include('name') }
    it { is_expected.to include('description') }
    it { is_expected.to include('release_date') }
    it { is_expected.to include('censorship') }
  end

  describe 'enums' do
    describe '#censorships' do
      it 'has censorships' do
        expect(described_class.censorships.to_h.keys).to contain_exactly(
          'G',
          'PG',
          'PG-13',
          'R',
          'NC-17'
        )
      end
    end
  end

  describe 'associations' do
    it 'has many performers' do
      expect(subject.respond_to?(:performers)).to be true
    end

    it 'belongs_to a director' do
      expect(subject.respond_to?(:director)).to be true
    end

    it 'has_many ratings' do
      expect(subject.respond_to?(:movie_ratings)).to be true
    end

    it 'has_many genres' do
      expect(subject.respond_to?(:genres)).to be true
    end

    it 'has_many news' do
      expect(subject.respond_to?(:news)).to be true
    end

    it 'has_many awards' do
      expect(subject.respond_to?(:awards)).to be true
    end
  end
end
