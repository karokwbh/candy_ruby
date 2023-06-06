# 編號：CANDY-016
# 程式語言：Ruby
# 題目：把原本 snake_case 的字轉換成 camelCase 格式
# 範例："hello_world" -> "helloWorld"

def toCamelCase(str)
  # 以_切割字串並每個陣列的首字大寫最後合併
  # 把[0]改成小寫
  str = str.split('_').map(&:capitalize).join
  str[0] = str[0].downcase
  str
end

p toCamelCase("book") # book
p toCamelCase("book_store") # bookStore
p toCamelCase("get_good_score") # getGoodScore