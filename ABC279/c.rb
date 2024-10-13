H,W=gets.split.map(&:to_i)
s=Array.new(W) {Array.new}
t=Array.new(W) {Array.new}
H.times do |i|
  line = gets.chomp.split('')
  W.times do |j|
    s[j] << line[j]
  end
end
H.times do
  line = gets.chomp.split('')
  W.times do |j|
    t[j] << line[j]
  end
end

s=s.sort
t=t.sort

if s==t
  puts "Yes"
  exit
end

puts "No"
