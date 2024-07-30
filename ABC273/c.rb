require 'set'
n = gets.to_i
a = gets.split.map(&:to_i)
count = Hash.new(0)
a.each do |s|
count[s]+=1
end
count=count.sort.reverse
l=count.size
for i in (0..l-1) do
  puts count[i][1]
end

(n-l).times do
  puts 0
end
