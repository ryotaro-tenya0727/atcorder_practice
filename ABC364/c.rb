n,x,y=gets.split.map(&:to_i)
a=gets.split.map(&:to_i).sort{ |a, b| b <=> a }
b=gets.split.map(&:to_i).sort{ |a, b| b <=> a }
a_sum=0
b_sum=0
puts a.inspect
puts b.inspect
count=0
n.times do |i|
  a_sum+=a[i]
  b_sum+=b[i]
  count+=1
  if a_sum > x
    puts count
    exit
  end

  if b_sum > y
    puts count
    exit
  end
end

puts count
