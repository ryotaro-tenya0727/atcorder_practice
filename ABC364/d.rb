N, Q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

b = []
k = []

def f(x, a, b, k)
  lb = a.bsearch_index { |v| v >= b - x } || N
  ub = lb + k -1
  a[ub] && a[ub] <= b+x
end

Q.times do |q|
  b,k=gets.split.map(&:to_i)
  ng = -1
  ok = 2 * 10**8 + 10
  while (ok - ng) > 1
    mid = (ok + ng) / 2
    if f(mid, a, b, k)
      ok = mid
    else
      ng = mid
    end
  end
  puts ok
end
