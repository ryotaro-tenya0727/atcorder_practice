N=7
P=[0, 1, 0, 0, 1,4]



P.unshift(-1)  # 入力された親のインデックスを1ベースから0ベースに調整

# グラフの構築
g=Array.new(N) { Array.new }
(1...N).each do |i|
  g[P[i]] << i
end

# puts g

# 深さ優先探索で子孫の数を計算
def dfs(start, children, n)
  children_count = Array.new(n, 0)
  stack = [start]

  # DFSをスタックで実行
  until stack.empty?
    puts stack.join(" ")
    node = stack.pop
    # このノードが処理済みかどうかを確認するための配列
    # 全ての子ノードをスタックに追加
    children[node].each do |child|
      stack.push(child)
    end
  end

  # 全ノードについて子孫の数をカウント
  (n-1).downto(0) do |i|
    children[i].each do |child|
      children_count[i] += children_count[child] + 1
    end
  end

  children_count
end

# 結果を出力
puts dfs(0, g, N)
