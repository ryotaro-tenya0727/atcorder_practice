

# 標準入力からの値を読み込む
N = gets.to_i

# グラフ G, H に含まれる辺の集合
edges_G = Set.new
edges_H = Set.new

M_G = gets.to_i
M_G.times do
  u, v = gets.split.map(&:to_i)
  edges_G.add([u - 1, v - 1])
  edges_G.add([v - 1, u - 1]) # 逆向きの辺も追加
end

M_H = gets.to_i
M_H.times do
  a, b = gets.split.map(&:to_i)
  edges_H.add([a - 1, b - 1])
  edges_H.add([b - 1, a - 1]) # 逆向きの辺も追加
end

# コストの行列を作成
A = Array.new(N) { Array.new(N, 0) }
for i in 0..N-2
  A[i][i+1..N-1] = gets.split.map(&:to_i)
end

for i in (0..N-1)
  for j in (0..N-1)
    A[j][i] = A[i][j]
  end
end


# H の頂点を G の頂点に対応させる並べ替え
P = (0..N-1).to_a

# 答えの初期値（十分大きな値を設定）
ans = 10**15

# すべての並べ替えを探索
P.permutation do |perm|
  sum = 0
  for i in 0..N-1
    for j in 0..i-1
      # H に (i, j) が含まれて G に (P[i], P[j]) が含まれない か、
      # H に (i, j) が含まれずに G に (P[i], P[j]) が含まれる 場合 A[i][j] を足す
      sum += A[i][j] if edges_H.include?([i, j]) != edges_G.include?([perm[i], perm[j]])
    end
  end
  # 最小値を更新
  ans = [ans, sum].min
end

# 結果を出力
puts ans
