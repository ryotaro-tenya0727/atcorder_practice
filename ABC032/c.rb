
# 入力受け取り
n, k = gets.split.map(&:to_i)
a=[]
n.times do
  a << gets.to_i
end

# 0が含まれていたらnをリターン
if a.include?(0)
  puts n
  exit
end

# しゃくとり法
res = 0
right = 0
mul = 1

(0..n-1).each do |left|
  while right < n && mul * a[right] <= k
    mul *= a[right]
    right += 1
  end

  res = [res, right - left].max # 部分列の長さを更新
  if left == right
    right += 1
  else
    mul /= a[left] # left を除外
  end
end

puts res
