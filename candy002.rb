# 編號：CANDY-002
# 程式語言：Ruby
# 題目：請寫一小段程式，印出連續陣列裡缺少的字元

Chars1 = ["a", "b", "c", "d", "f", "g"]
Chars2 = ["O", "Q", "R", "S"]

def missingChar(chars)
  # 陣列由最小最大展開 然後使用差集來找出沒有的元素
  [*chars.first..chars.last] - chars
end

puts missingChar(Chars1) # 印出 e
puts missingChar(Chars2) # 印出 P

# 提示：
# 可使用字串的 charCodeAt 方法...
