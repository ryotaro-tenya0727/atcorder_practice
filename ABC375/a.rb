
N=gets.to_i
S=gets.chomp
l=S.size
count=0
for i in (0..l-3) do
  if S[i]=="#" && S[i+2]=="#" && S[i+1]=="."
    count+=1
  end
end

puts count
