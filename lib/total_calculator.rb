class TotalCalculator < Base
  attr_reader :discount, :tip

  def initialize(args)
    super
    @discount = AmountPercentage.new(@amount, @discount_percentage)
    @tip = AmountPercentage.new(@amount, @tip_percentage)
  end

  def calculate
    amount_with_tax.calculate - discount.calculate + tip.calculate
  end

  private

  def amount_with_tax
    Tax.new(amount)
  end
end

