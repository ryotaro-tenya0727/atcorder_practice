a,b,x=gets.split.map(&:to_i)
t=(a-b).abs
min=[a,b].min
max=[a,b].max
count=0
(min-t).upto(max+t) do |i|
  if i < min
    count+=1 if min-i == max-min
  elsif min < i && i < max
    count+=1 if i-min == max-i
  elsif max < i
    count+=1 if i-max == max-min
  elsif min == i && max == i
    count+=1
  end
end
puts count
