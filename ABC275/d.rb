N=gets.to_i
$memo=Hash.new(-1)
def f(n)
  return 1 if n==0
  return $memo[n] if $memo[n]!=-1
  $memo[n] = f(n/2) + f(n/3)
  return $memo[n]
end

puts f(N)
