  s = []
  9.times { s << gets.chomp }

  # 座標が有効かどうかを判断するラムダ関数
  valid = ->(x, y) { x.between?(0, 8) && y.between?(0, 8) && s[x][y] == '#' }

  # ユニークな正方形を保存するためのセット
  st = Set.new
  for i in 0...9
    for j in 0...9
      (-8..8).each do |dx|
        (-8..8).each do |dy|
          # dxとdyが両方0の場合はスキップ
          next if dx == 0 && dy == 0
          # 四角形を形成する座標を計算
          i2, j2 = i + dx, j + dy
          i3, j3 = i2 - dy, j2 + dx
          i4, j4 = i3 - dx, j3 - dy
          # すべての座標が有効であれば、セットに追加
          if valid.call(i, j) && valid.call(i2, j2) && valid.call(i3, j3) && valid.call(i4, j4)
            sq = Set[[i, j], [i2, j2], [i3, j3], [i4, j4]]
            st.add(sq)
          end
        end
      end
    end
  end
  # ユニークな正方形の数を出力
  puts st.size
