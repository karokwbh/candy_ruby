# 編號：CANDY-013
# 程式語言：Ruby
# 題目：根據台灣財政部所提供的公司統編驗證規則，計算統一編號是否正確
# https://www.fia.gov.tw/singlehtml/3?cntId=c4d9cff38c8642ef8872774ee9987283

def isValidVatNumber(vat)
  # 轉成數字陣列
  digits = vat.chars.map(&:to_i)
  return false if digits.length != 8

  weights = [1, 2, 1, 2, 1, 2, 4, 1]
  # 將數字陣列跟weights組起來並且相乘並相加
  result = digits.zip(weights).map { |a, b|
    sum = (a * b).divmod(10).sum
  }
  # 依照倒數第二位是不是10 分別去做判斷
  if result[-2] == 10
    return (result.sum - 10 + 1).divmod(10)[1] == 0 || (result.sum - 10).divmod(10)[1] == 0
  else
    return result.sum.divmod(10)[1] == 0
  end
end

p isValidVatNumber("10458575") # true
p isValidVatNumber("88117125") # true
p isValidVatNumber("53212539") # true
p isValidVatNumber("88117126") # false