x,k=gets.split.map(&:to_i)

# xの直後の 10**i+1の倍数を求める。小さかったら0
for i in (0..k-1) do
  x/=10**i
  m=x%10
  if (m<=4)
    x-=m
  else
    x+=(10-m)
  end
  x*=10**i
end

puts x
