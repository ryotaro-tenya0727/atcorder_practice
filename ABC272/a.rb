n=gets.to_i
a=gets.split.map(&:to_i)
sum=Array.new(n,0)
sum[0]=a[0]

if n==1
  puts sum[0]
  return
end

for i in 1..n-1  do
  sum[i]=sum[i-1]+a[i]
end

puts sum[i]
