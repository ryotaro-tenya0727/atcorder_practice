M=gets.to_i.to_s(3).split("").map(&:to_i).reverse
ans = []
for i in (0..10) do
  next if M[i].nil?
  M[i].times do
    ans << i
  end
end

puts ans.size
puts ans.join(" ")
