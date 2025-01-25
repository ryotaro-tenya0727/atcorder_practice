require 'csv'

# 入力CSVファイルのパス
input_file = 'tes.csv'
output_file = 'output.csv'

# CSVの読み込みと処理
CSV.open(output_file, 'w') do |csv_out|
  CSV.foreach(input_file) do |row|
    # 1列目の末尾に指定の文字列を追加
    row[0] = "#{row[0]}@otaku-idol-ryotaro111.com"

    # 修正後の行を新しいCSVに書き込む
    csv_out << row
  end
end

puts "処理が完了しました。結果は '#{output_file}' に保存されました。"
