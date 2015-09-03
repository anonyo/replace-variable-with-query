class Tax < Struct.new(:amount)
  RATE = 0.05
  def calculate
    amount + tax_amount
  end
  private
  def tax_amount
    amount * RATE
  end
end
