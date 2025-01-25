require 'set'

# 入力処理
n,m=gets.split.map(&:to_i)
g=Array.new(n+1){[]}
m.times{
  a,b=gets.split.map(&:to_i)
  g[a] << b
}

# BFSの初期化
queue = [1]
visited = Set.new([1])
count=0

# BFS実行
while !queue.empty?
  v = queue.shift
  g[v].each do |neighbor|
    unless visited.include?(neighbor)
      queue << neighbor
      visited.add(neighbor)
      count+=1
    end
  end
end

# 最大の頂点番号を出力
puts count
