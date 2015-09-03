require 'spec_helper'

describe Tax do
  describe '#calculate' do
    it 'returns amount including tax' do
      tax = Tax.new(100)
      expect(tax.calculate).to eq 105
    end
  end
end
