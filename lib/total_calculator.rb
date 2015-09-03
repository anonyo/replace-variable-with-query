class TotalCalculator < Base

  def calculate
    amount_with_tax.calculate - discount_amount.calculate + tip_amount.calculate
  end

  private

  def amount_with_tax
    Tax.new(amount)
  end

  def discount_amount
    AmountPercentage.new(amount, discount_percentage)
  end

  def tip_amount
    AmountPercentage.new(amount, tip_percentage)
  end
end

