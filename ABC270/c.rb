N,X,Y = gets.split.map(&:to_i)
chs=Hash.new{|h,k|h[k]=[]}
parents = Hash.new(nil)
(N-1).times do |i|
  u,v=gets.split.map(&:to_i)
  chs[u] << v
  chs[v] << u
end



def dfs(start, chs, parents)
  reached = Hash.new(false)
  stack=[X]
  until stack.empty?
    node = stack.pop
    reached[node] = true

    chs[node].reverse_each do |child|
      next if reached[child]
      stack.push(child)
      parents[child] = node
    end
  end
end

dfs(X, chs, parents)

i = Y
ans = [Y]
while parents[i] != nil
  i = parents[i]
  ans.unshift(i)
end
puts ans
