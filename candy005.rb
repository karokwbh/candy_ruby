# 編號：CANDY-005
# 程式語言：Ruby
# 題目：完成函數的內容，把傳進去的數字的每個位數平方之後組合在一起

def squareDigits(num)
  # 數字轉字串
  # 字串轉字元陣列
  # 陣列使用map 讓每個元素平方
  # 組合
  num.to_s.chars.map { |x| x.to_i.pow(2) }.join
end

puts squareDigits(3212) # 印出 9414
puts squareDigits(2112) # 印出 4114
puts squareDigits(387) # 印出 96449
