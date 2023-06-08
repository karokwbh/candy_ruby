# 編號：CANDY-010
# 程式語言：Ruby
# 題目：把數字以 10 進位展開式呈現，數字均為大於 0 的正整數
# 範例：9527 變成 "1000 x 9 + 100 x 5 + 10 x 2 + 7"

def expandedForm(num)
  # 使用digits 轉陣列 舉例：12345.digits # => [5, 4, 3, 2, 1]
  num.digits.each_with_index.map { |x, y|
    if x == 0 # 當數字為0
      nil
    elsif y == 0 # 當為個位數時
      "#{x}"
    else # 其餘
      "#{10.pow(y)} x #{x}"
    end
  }.compact.reverse.join(" + ")
  # 刪掉nil的並反轉陣列再用 + 組合
end

puts expandedForm(8) # 印出 8
puts expandedForm(25) # 印出 10 x 2 + 5
puts expandedForm(148) # 印出 100 x 1 + 10 x 4 + 8
puts expandedForm(1450) # 印出 1000 x 1 + 100 x 4 + 10 x 5
puts expandedForm(60308) # 印出 10000 x 6 + 100 x 3 + 8