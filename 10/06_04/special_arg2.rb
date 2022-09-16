def calc_tax(price, tax_rate = 0.08)
  tax = (price * tax_rate).to_i
  tax_included = price + tax
  { tax: tax, tax_included: tax_included }
end

p calc_tax(100, 0.1)
# => {:tax=>10, :tax_included=>110}
p calc_tax(100)
# => {:tax=>8, :tax_included=>108}
