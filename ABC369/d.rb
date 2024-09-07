n=gets.to_i
a=gets.split.map(&:to_i)
a.unshift(-1)
h=Hash.new(0)
dp_odd=Array.new(n+1, 0)
dp_odd[0]=-1<<60
dp_even=Array.new(n+1, 0)
count=0
for i in (1..n) do
  dp_odd[i] = [dp_odd[i-1], dp_even[i-1]+a[i]].max
  dp_even[i] = [dp_odd[i-1]+a[i]*2, dp_even[i-1]].max
end
puts [dp_odd[n], dp_even[n]].max
