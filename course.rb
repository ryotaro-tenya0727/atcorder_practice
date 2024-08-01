n,x=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
a.unshift(-1)

g=Array.new(n){[]}

for i in (1..n-1) do
  g[a[i]] << i
end

stack=[0]
depth=Array.new(n+10)
depth[0]=0

while stack.size!=0
  v=stack.pop
  g[v].each do |n|
    depth[n]=depth[v]+1
    stack << n
  end
end

puts depth[x]
