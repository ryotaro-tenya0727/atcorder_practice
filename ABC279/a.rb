s=gets.chomp
count=0
for i in (0..s.size-1)
  if s[i]=='v'
    count+=1
  elsif s[i]=='w'
    count+=2
  end
end

puts count
