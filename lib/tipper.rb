class Tipper
  TAX = 0.05

  def initialize(args)
    args = default args
    @amount = args[:amount]
    @discount_percentage = args[:discount_percentage]
    @tip_percentage = args[:tip_percentage]
  end

  def default(args)
    {discount_percentage: 0}.merge args
  end

  def total
    amount + tax - calculate(discount_percentage) + calculate(tip_percentage)
  end

  private

  attr_reader :amount, :discount_percentage, :tip_percentage

  def tax
    (amount * TAX)
  end

  def calculate(percentage)
    (amount * (percentage / 100.0))
  end
end
