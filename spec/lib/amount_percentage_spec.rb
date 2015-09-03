require 'spec_helper'

describe AmountPercentage do
  describe '#calculate' do
    it 'returns percentage in amount' do
      amount_percentage = AmountPercentage.new(100, 15)

      expect(amount_percentage.calculate).to eq 15
    end
  end
end
