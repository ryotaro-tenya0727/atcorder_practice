n=gets.to_i

a=gets.chomp.split(" ").map.with_index do |n, index|
  [n.to_i,index]
end
a=a.sort_by{|ar| ar[0]}.reverse
puts a[1][1]+1
