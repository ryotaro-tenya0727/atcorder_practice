s=gets.chomp
t=gets.chomp
l=s.size
x=[]
count=0
for i in (0..l-1) do
  if s[i]!=t[i]
    count+=1
  end
end
dp=Array.new(count+1)
dp[0]=s
for i in (1..count) do
  array=[]
  for j in (0..l-1) do
    ss = dp[i-1]
    if ss[j]!=t[j]
      prev=ss[j].dup
      ss[j]=t[j]
      array << ss.dup
      ss[j]=prev
    end
  end
  dp[i]=array.min
  x << array.min
end

# puts x.size==0 ? "0" : x.sort
if x.size==0
  puts "0"
else
  puts x.size
  puts x
end
