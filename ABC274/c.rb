n=gets.to_i
a=gets.split.map(&:to_i)
a.unshift(-1)
g=Array.new(2*n+10){Array.new}

for i in (1..n) do
  g[a[i]] << i*2
  g[a[i]] << i*2 + 1
end

depth=Array.new(2*n+10,-1)
depth[1]=0
stack=[1]

while stack.size > 0
  v=stack.pop
  g[v].each do |i|
    depth[i]=depth[v]+1
    stack << i
  end
end

1.upto(2*n+1) do |i|
  puts depth[i]
end
