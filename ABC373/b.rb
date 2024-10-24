root = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".split('')
l=root.size
S=gets.chomp.split('')

count=0
start= S.index(root[0])
1.upto(l-1) do |st|
  goal = S.index(root[st])
  count+= (start-goal).abs
  start=goal
end

puts count
