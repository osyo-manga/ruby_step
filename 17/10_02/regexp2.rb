tel = "09012345678"
match = tel.match(/(\d{3})(\d{4})(\d{4})/)
# match[1] の変わりに参照できる
p $1   # => "090"
p $2   # => "1234"
p $3   # => "5678"

# これは match[0] の変わり
p $&   # => "09012345678"

# if 文でマッチするのかどうか判定しつつ値を取得する時に利用する
if tel =~ /(\d{3})(\d{4})(\d{4})/
  puts "#{$1}-#{$2}-#{$3}"
  # => 090-1234-5678
end


