class TotalCalculator < Base
  TAX = 0.05

  def calculate
    amount_with_tax - discount_amount + tip_amount
  end

  private

  def amount_with_tax
    amount + amount * TAX
  end

  def discount_amount
    convert_num(discount_percentage)
  end

  def tip_amount
    convert_num(tip_percentage)
  end

  def convert_num(percentage)
    (amount * (percentage / 100.0))
  end
end

