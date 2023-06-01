# 編號：CANDY-008
# 程式語言：Ruby
# 題目：傳入一字串，計算得分最高的字
#      英文字母 a 得 1 分、b 得 2 分、c 得 3 分，以此類推。
#      所有傳入的字都是小寫。

def highestScoreWord(input)
  # 分割字串
  # 算分數
  # 排列挑出最大的
  input.split.map { |arr| [arr, arr.chars.map { |char| char.ord - "a".ord + 1 }.sum] }.sort_by{ |char| char[1] }.last[0]
end

puts highestScoreWord("lorem ipsum dolor sit amet") # 印出 ipsum
puts highestScoreWord("heyn i need a rubygem up to build this") # 印出 rubygem
puts highestScoreWord("in time machine there are some bugs") # 印出 there