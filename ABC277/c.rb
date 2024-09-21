N=gets.to_i
g=Hash.new{|h,k|h[k]=[]}
N.times do
  a,b=gets.split.map(&:to_i)
  g[a] << b
  g[b] << a
end
max=1
stack=[1]
until stack.empty?
  node = stack.pop

  max = [max, node].max
  g[node].each do |child|
    stack.push(child)
  end
  g.delete(node)
end

puts max
