n=gets.to_i
s=[]
n.times do
  ss=gets.chomp.split("")
  s << ss
end
max=s.map(&:length).max
T=Array.new(max) {Array.new(n, "*")}

for i in (0..n-1) do
  for j in (0..s[i].size-1) do
    T[j][n-i-1]=s[i][j]
  end
end

for i in (0..max-1) do
  while T[i][-1]=="*"
    T[i].pop
  end
  puts T[i].join("")
end
