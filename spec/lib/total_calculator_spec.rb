require 'spec_helper'

describe TotalCalculator do
  describe '#calculate' do
    it 'calculates tax and tip on amount' do
     args = { amount: 100, discount_percentage: 10, tip_percentage: 10 }
     total_calculator = TotalCalculator.new(args)

     expect(total_calculator.calculate).to eq 105
    end
  end
end
