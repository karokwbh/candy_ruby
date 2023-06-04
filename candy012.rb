# 編號：CANDY-012
# 程式語言：Ruby
# 題目：把數字加總，最終濃縮成個位數
# 範例：9527 => 9 + 5 + 2 + 7 => 23 => 2 + 3 => 5
#      1450 => 1 + 4 + 5 + 0 => 10 => 1 + 0 => 1

def numberReducer(num)
  # 把數字轉成字串陣列
  # 用reduce去做累加 但是因為是字元相加 會變成串連 所以要轉成數字再做相加
  # 一直做到字串長度不會大於1
  result = num.to_s.chars
  while result.length > 1
    result = result.reduce(0) { |sum, n|
      sum + n.to_i
    }

    result = result.to_s.chars
  end

  result
end

puts numberReducer(9527) # 印出 5
puts numberReducer(1450) # 印出 1
puts numberReducer(5566108) # 印出 4
puts numberReducer(1234567890) # 印出 9