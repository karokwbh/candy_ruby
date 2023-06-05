# 編號：CANDY-015
# 程式語言：Ruby
# 題目：把原本的字串拆解成 2 個字元一組，若不足 2 個字則補上底線
# 範例：
#      "abcdef" -> ['ab', 'cd', 'ef']
#      "abcdefg" -> ['ab', 'cd', 'ef', 'g_']

def splitString(str)
  # 轉成字元陣列並兩個為一組
  # 兩兩合併不夠的補_
  result = []
  str.chars.each_slice(2) { |tuple|
    result << tuple.join.ljust(2, '_')
  }

  result
end

p splitString("abcdef") # ["ab", "cd", "ef"]
p splitString("abcdefg") # ["ab", "cd", "ef", "g_"]
p splitString("") # []