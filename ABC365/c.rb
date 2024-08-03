n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

ok=0
ng=2*10**14+1

def calc(x, a)
  sum=0
  a.each do |aa|
    sum+=[aa, x].min
  end
  sum
end

while ng-ok > 1
  mid = (ok + ng)/2
  if calc(mid, a) <= m
    ok=mid
  else
    ng=mid
  end
end

puts ok==2*10**14 ? "infinite" : ok
