n,m=gets.split.map(&:to_i)
relations = Array.new(n+1){Array.new(n+1, false)}

for l in (0..m-1) do
  s=gets.split.map(&:to_i)
  x=s[1..-1]

  for i in (0..x.size-1) do
    for j in (0..x.size-1) do
      relations[x[i]][x[j]]=true
    end
  end
end


for i in (1..n) do
  for j in (i+1..n) do
    if relations[i][j] ==false
      puts "No"
      return
    end
  end
end
puts "Yes"
