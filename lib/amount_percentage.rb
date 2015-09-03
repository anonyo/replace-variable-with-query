class AmountPercentage < Struct.new(:amount, :percentage)
  def calculate
    (amount * (percentage / 100.0))
  end
end
