n=gets.to_i
ans=[]
n.times do
  s,t=gets.chomp.split(" ")
  ans << [s,t.to_i]
end
ans = ans.sort_by {|n| -n[1]}
puts ans[1][0]
