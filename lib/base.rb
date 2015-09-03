class Base
  attr_reader :amount, :discount_percentage, :tip_percentage

  def initialize(args)
    args = default args
    @amount = args[:amount]
    @discount_percentage = args[:discount_percentage]
    @tip_percentage = args[:tip_percentage]
  end

  def default(args)
    {discount_percentage: 0}.merge args
  end
end
