n=gets.to_i
s=[]
n.times do
  s << gets.chomp
end

for i in 1..n-1
  if s[i]=="sweet" && s[i-1]=="sweet"
    if i!=n-1
      puts "No"
      exit
    end
  end
end

puts "Yes"
