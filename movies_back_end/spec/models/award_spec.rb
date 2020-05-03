require 'rails_helper'

RSpec.describe Award, type: :model do
  describe '#columns' do
    subject { described_class.column_names }
    it { is_expected.to include('name') }
  end

  describe '#associations' do
    it 'belongs_to awardable' do
      expect(subject.respond_to?(:awardable)).to be true
    end
  end
end
