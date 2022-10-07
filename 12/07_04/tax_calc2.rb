class TaxCalc
  @@tax_rate = 0.08

  def initialize(price)
    @price = price
  end

  def execute
    @price * @@tax_rate
  end
end

calculator = TaxCalc.new(100)
p calculator.execute
