# 編號：CANDY-007
# 程式語言：Ruby
# 題目：在某個數字陣列裡，可能藏有某個不合群的奇數或偶數，試著找出它！

def findSomeDifferent(numbers)
  # 用一個陣列分別裝奇數陣列跟偶數陣列
  # 挑出最小size的陣列
  [numbers.select(&:odd?), numbers.select(&:even?)].min { |a, b| a.size <=> b.size }
end

puts findSomeDifferent([2, 4, 0, 100, 4, 11, 2602, 36]) # 印出 11
puts findSomeDifferent([160, 3, 1719, 19, 11, 13, -21]) # 印出 160