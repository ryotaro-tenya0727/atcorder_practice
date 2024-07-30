n,x,y=gets.split.map(&:to_i)
a=[]
b=[]
n.times do
  aa,bb=gets.split.map(&:to_i)
  a << aa
  b << bb
end
a=a.sort{ |a, b| a <=> b }
b=b.sort{ |a, b| a <=> b }

a_sum=0
b_sum=0
count=0
n.times do |i|
  a_sum+=a[i]
  b_sum+=b[i]
  count+=1
  if a_sum > x || b_sum > y
    puts count
    exit
  end
end
puts count
