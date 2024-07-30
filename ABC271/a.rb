n=gets.to_i
s=n.to_s(16)
if s.size ==1
  s = "0" + "#{s}"
end
s = s.split("")

ans=[]
s.each do |c|
  if ["a","b","c","d","e","f"].include?(c)
    ans.push(c.upcase)
  else
    ans.push(c)
  end
end

puts ans.join
