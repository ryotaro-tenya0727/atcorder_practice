s=gets.chomp
t=gets.chomp
l=t.size
for i in (0..s.size-1)
  if s[i..i+l-1]==t
    puts "Yes"
    exit
  end
end
puts "No"
