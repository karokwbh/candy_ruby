# 編號：CANDY-014
# 程式語言：Ruby
# 題目：把鄰近的重複值去除，但仍照原本的順序排序
# 範例："AAABBBDDDAABBBCC" -> ['A', 'B', 'D', 'A', 'B', 'C']

def uniqueOrder(sequence)
  # 字串轉字元陣列
  sequence = sequence.chars if sequence.is_a?(String)
  # 根據回傳連續的一樣為一組 然後取第一個
  sequence.chunk { |x| x }.map(&:first)
end

p uniqueOrder("AABCC") # [ 'A', 'B', 'C']
p uniqueOrder("AAABBBCCBCC") # [ 'A', 'B', 'C', 'B', 'C']
p uniqueOrder([1, 2, 1, 2, 1]) # [ 1, 2, 1, 2, 1 ]
p uniqueOrder([1, 1, 1, 2, 2, 2, 1]) # [1, 2, 1]