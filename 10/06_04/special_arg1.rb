def calc_tax(price, tax_rate)
  tax = (price * tax_rate).to_i
  tax_included = price + tax
  { tax: tax, tax_included: tax_included }
end

p calc_tax(100, 0.08)
# => {:tax=>8, :tax_included=>108}
p calc_tax(100)
# => error: wrong number of arguments (given 1, expected 2) (ArgumentError)
