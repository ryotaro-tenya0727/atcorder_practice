max=-1
gets.chomp.chars.each_with_index do |c, i|
  if c=='a'
    max=[max, i].max
  end
end
puts max==-1 ? max : max+1
