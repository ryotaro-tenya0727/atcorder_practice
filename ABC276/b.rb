N,M=gets.split.map(&:to_i)
chs=Hash.new{|h,k|h[k]=[]}
M.times do
  a,b=gets.split.map(&:to_i)
  chs[a]<<b
  chs[b]<<a
end

1.upto(N) do |i|
  s = chs[i].sort.join(" ")
  num=chs[i].size
  puts "#{num} #{s}"
end
