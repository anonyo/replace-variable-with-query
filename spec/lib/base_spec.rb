require 'spec_helper'

describe Base do
  describe '#initialize' do
    it 'can accept 3 arguments' do
      args = { amount: 100, discount_percentage: 5, tip_percentage: 15 }

      expect { Base.new(args) }.not_to raise_error
    end

    it 'does not raise error whe nil is passed as argument' do
      args = { amount: nil, discount_percentage: nil, tip_percentage: nil }

      expect { Base.new(args) }.not_to raise_error
    end
  end
end
