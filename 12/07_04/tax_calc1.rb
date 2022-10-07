class TaxCalc
  def initialize(price, tax_rate)
    @price = price
    @tax_rate = tax_rate
  end

  def execute
    @price * @tax_rate
  end
end

calculator = TaxCalc.new(100, 0.08)
p calculator.execute
