n=gets.to_i
p=gets.split.map(&:to_i)
stock =[]
n.times do
  num = p.pop
  stock << num
  if stock.any? {|s| s < num}
    smaller = stock.select{|s| s < num }.max
    p << smaller
    stock = stock - [smaller]
    stock.sort.reverse.each do |s|
      p << s
    end
    break
  end
end

puts p.join(" ")
