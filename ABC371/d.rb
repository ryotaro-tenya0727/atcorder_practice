N = gets.to_i
X = gets.split.map(&:to_i).map.with_index { [_1, _2+1] }.sort_by(&:first).unshift([-10**15,0])
P = gets.split.map(&:to_i)
sums = [0]
for i in (0..N-1)
  sums << sums[-1] + P[i]
end


ans = []
gets.to_i.times do
  l, r = gets.split.map(&:to_i)
  rindex = X.bsearch_index { _1.first > r } || 0
  lindex = X.bsearch_index { _1.first >= l } || 0
  ans << sums[rindex-1] - sums[lindex-1]
end


puts ans
