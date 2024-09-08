L,R=gets.split.map(&:to_i)
if L==1 && R==0
  puts "Yes"
elsif L==0 && R==1
  puts "No"
else
  puts "Invalid"
end
