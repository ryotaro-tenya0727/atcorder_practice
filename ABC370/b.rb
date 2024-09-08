n=gets.to_i
ar=[]
n.times do
  ar << gets.split.map(&:to_i)
end
i=1
for j in 1..n do
  if i>= j
    i=ar[i-1][j-1]
  else
    i=ar[j-1][i-1]
  end
end
puts i
