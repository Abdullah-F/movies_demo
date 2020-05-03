require 'rails_helper'

RSpec.describe News, type: :model do
  describe '#columns' do
    subject { described_class.column_names }
    it { is_expected.to include('title') }
    it { is_expected.to include('body') }
  end

  describe '#associations' do
    it 'belongs_to newsable' do
      expect(subject.respond_to?(:newsable)).to be true
    end
  end
end
