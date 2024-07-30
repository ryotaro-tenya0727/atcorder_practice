n=gets.to_i
a=gets.split.map(&:to_i)

odd=a.select{|n| n.odd?}
even=a.select{|n| n.even?}

odd = odd.sort{ |a, b| b <=> a }
even = even.sort{ |a, b| b <=> a }

max=-1
if odd.size >= 2
  max = [odd[0] + odd[1], max].max
end
if even.size >= 2
  max = [even[0] + even[1], max].max
end


puts max
