N = gets.to_i
H = gets.split.map(&:to_i)
s = []
ans = []

H.reverse_each do |h|
  ans << s.size
  s.pop while s.any? && s.last < h
  s << h
end

puts ans.reverse.join(" ")
