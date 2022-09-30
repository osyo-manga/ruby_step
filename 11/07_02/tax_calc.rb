class TaxCalc
  def initialize
    p "calculator is starting"
  end

  def execute(price, tax_rate)
    price * tax_rate
  end
end

calculator = TaxCalc.new

p calculator.execute(100, 0.08)
