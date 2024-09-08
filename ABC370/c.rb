s=gets.chomp.split("")
t=gets.chomp.split("")
l=s.size
x=[]
count=0
for i in (0..l-1) do
  if s[i]!=t[i]
    count+=1
  end
end
dp=Array.new(count+1)
dp[0]=s.join("")
for f in (1..count) do
  array=[]
  for i in (0..l-1) do
    ss = dp[f-1].split('')
    if ss[i]!=t[i]
      prev=ss[i].dup
      ss[i]=t[i]
      array << ss.join("")
      ss[i]=prev
    end
  end
  dp[f]=array.min
  x << array.min
end

# puts x.size==0 ? "0" : x.sort
if x.size==0
  puts "0"
else
  puts x.size
  puts x
end
