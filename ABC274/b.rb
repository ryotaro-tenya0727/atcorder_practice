H,W=gets.split.map(&:to_i)
s=Array.new(H+1) {Array.new}
for i in (1..H) do
  ss= gets.chomp.split("")
  ss.unshift("#")
  s[i]=ss
end
ans=[]
for j in (1..W) do
  count=0
  for i in (1..H) do
    if s[i][j]=="#"
      count+=1
    end
  end
  ans << count
end

puts ans.join(" ")
