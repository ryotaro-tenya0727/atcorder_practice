hands=Hash.new(0)
tired=0
n=gets.to_i
n.times do
  a,s=gets.chomp.split(" ")
  a=a.to_i
  if hands[s] != 0
    tired+=(hands[s] - a).abs
  end
  hands[s]=a
end
puts tired
