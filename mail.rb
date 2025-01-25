# 基本のデータ（1列目以外は固定）
base_row = "ryo-ta323-erw-1,pp1-sds9aappcc,200,1"

# ランダムな5文字の英数字を生成するメソッド
def random_string(length = 5)
  chars = ('a'..'z').to_a + ('0'..'9').to_a
  Array.new(length) { chars.sample }.join
end

# 1から100までの行を生成
1.upto(100) do |i|
  # 1列目を取り出し、-で分割
  parts = base_row.split(",")[0].split("-")

  # 指定部分（2つ目の要素）をランダムな5文字に置き換え
  parts[0] = random_string(4)
  parts[1] = random_string
  parts[3] = random_string
  parts[2] = random_string

  # 並べ替え（アルファベット順）
  parts.sort!

  # 最後の-を取り除く
  modified_first_column = parts.join

  # 全体の行を組み立て
  modified_row = "#{modified_first_column},pp1-sds9aappcc,200,1"
  puts modified_row
end
