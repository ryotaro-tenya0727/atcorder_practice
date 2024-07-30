n=gets.to_i
ans=[]
n.times do
  s,t=gets.split.map(&:to_i)
  ans << [s,t]
end
ans = ans.sort_by {|n| -n[1]}
puts ans[1][1]
