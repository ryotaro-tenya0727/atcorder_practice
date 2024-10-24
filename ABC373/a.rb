count=0
1.upto(12) do |i|
  if gets.chomp.size == i
    count+=1
  end
end
puts count
