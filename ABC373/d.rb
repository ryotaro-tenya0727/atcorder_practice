# 入力を読み込む
N, M = gets.split.map(&:to_i)
G = Array.new(N) { [] }
M.times do
  u, v, w = gets.split.map(&:to_i)
  u -= 1
  v -= 1
  G[u] << [v, w]
  G[v] << [u, -w]
end

visited = Array.new(N, false)  # 値が確定しているかどうか
ans = Array.new(N, 0)  # 書き込む値

N.times do |i|
  # すでに値が確定しているならばスキップ
  next if visited[i]
  # 頂点 i の値を 0 に確定し，探索を始める
  st = [i]
  visited[i] = true

  until st.empty?
    # いま頂点 u にいる
    u = st.pop
    # 頂点 u に隣接する頂点 v を調べる
    G[u].each do |v, w|
      unless visited[v]
        # まだ頂点 v の値が確定していないならば，頂点 u の値と整合的になるように，頂点 v の値を確定させる
        visited[v] = true
        ans[v] = ans[u] + w
        st << v
      end
    end
  end
end

puts ans.join(' ')
