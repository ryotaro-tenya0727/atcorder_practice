require "sorted_set"

H, W, Q = gets.split.map(&:to_i)

g1 = Array.new(H) { SortedSet.new(0..W-1) }
g2 = Array.new(W) { SortedSet.new(0..H-1) }

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
  it = g2[c].to_a.reverse.bsearch { |x| x < r }
  erase.call(it, c) if it

  # 下
  it = g2[c].to_a.bsearch { |x| x > r }
  erase.call(it, c) if it

  # 左
  it = g1[r].to_a.reverse.bsearch { |x| x < c }
  erase.call(r, it) if it

  # 右
  it = g1[r].to_a.bsearch { |x| x > c }
  erase.call(r, it) if it
end
puts g1.sum(&:size)
