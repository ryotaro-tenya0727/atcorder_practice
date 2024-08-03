n=gets.to_i
h=gets.split.map.with_index do |n, index|
  [n.to_i,index]
end
max=0

for i in (1..n-1) do
  if h[i][0]>h[max][0]
    max=h[i][1]
  end
end

puts max+1
