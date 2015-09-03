class Tipper < Base

  def total
    total_calculator.calculate
  end

  private

  def total_calculator
    TotalCalculator.new(tipper_args)
  end

  def tipper_args
    { amount: amount, discount_percentage:
      discount_percentage,
      tip_percentage: tip_percentage }
  end
end
