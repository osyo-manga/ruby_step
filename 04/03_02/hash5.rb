child = { height: 110, weight: 20, age: 7 }
child.delete(:age)

p child         # => {:height=>110, :weight=>20, :age=>7}
p child[:age]   # => nil
