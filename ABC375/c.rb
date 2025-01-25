n = gets.to_i
a = Array.new(n) { gets.chomp.chars }
ans = Array.new(n) { Array.new(n) }

# 各セルの回転を必要最小限に計算する
(0..n-1).each do |i|
  (0..n-1).each do |j|
    # 必要な回転数を事前に計算
    d = [i + 1, j + 1, n - i, n - j].min % 4
    ni, nj = i, j

    case d
    when 1
      ni, nj = j, n - 1 - i
    when 2
      ni, nj = n - 1 - i, n - 1 - j
    when 3
      ni, nj = n - 1 - j, i
    end

    ans[ni][nj] = a[i][j]
  end
end

ans.each do |row|
  puts row.join
end
