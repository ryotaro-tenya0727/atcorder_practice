s=gets.chomp
t=gets.chomp

l=[s.length, t.length].max

for i in 0..l-1
  if s[i] != t[i]
    puts i+1
    exit
  end
end

puts 0
