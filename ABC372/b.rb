m=gets.to_i
last_m=m.dup
a=1
counts=[]
while m >= 3
  count=0
  a=1
  while m >= a
    a*=3
    count+=1
  end
  counts << count-1
  m=m-3**(count-1)
end
counts_sum = counts.sum {|c| 3**c}
other = last_m-counts_sum
if other == 1
  counts << 0
elsif other == 2
  counts << 0
  counts << 0
end

puts counts.size
puts counts.join(' ')
