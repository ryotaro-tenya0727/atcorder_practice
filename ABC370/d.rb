require "pry"

# 標準入力を高速化
$stdin.sync = true

H, W, Q = gets.split.map(&:to_i)

g1 = Array.new(H) { Set.new(0..W-1) }
g2 = Array.new(W) { Set.new(0..H-1) }

erase = ->(i, j) {
  g1[i].delete(j)
  g2[j].delete(i)
}

Q.times do
  r, c = gets.split.map(&:to_i)
  r -= 1
  c -= 1


  if g1[r].include?(c)
    erase.call(r, c)
    next
  end

  # 上
  it = g2[c].to_a.sort.reverse.find { |x| x < r }
  erase.call(it, c) if it

  # 下
  it = g2[c].to_a.sort.find { |x| x > r }
  erase.call(it, c) if it

  # 左
  it = g1[r].to_a.sort.reverse.find { |x| x < c }
  erase.call(r, it) if it

  # 右
  it = g1[r].to_a.sort.find { |x| x > c }
  erase.call(r, it) if it
end
puts g1.sum(&:size)
