N,Q=gets.split.map(&:to_i)
array=Array.new(N) {Array.new}
N.times do |n|
  t = gets.split.map(&:to_i)
  array[n]=t[1..-1]
end
ans = []
Q.times do |q|
  s,t = gets.split.map(&:to_i)
  ans.push(array[s-1][t-1])
end

puts ans
