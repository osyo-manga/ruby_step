# Hash を each などするとブロックの引数には [key, value] という配列で受け取る
# なので { height: 170, width: 60 }.each  は [[:height, 170], [:width, 60]].each してるのとだいたい同じ意味になる
# この時にブロックの引数が1つだけの場合は
# element = [170, 60]
# という形で配列形式で値を受け取る
p ({ height: 170, width: 60 }.to_a)
{ height: 170, width: 60 }.each do |element|
  p element
end

# ブロックの引数が2つの場合は [key, value] の配列の要素を分割して受け取る事ができる
# 以下のように代入されるのと同じ意味になる
# key, value = [170, 60]
# ブロックの引数の数で受け取り方が異なるので注意
{ height: 170, width: 60 }.each do |key, value|
  p key
  p value
end
