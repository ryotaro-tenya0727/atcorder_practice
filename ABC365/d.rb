n=gets.to_i
s=gets.chomp

def check(s)
  if s=="R"
    puts "R" + "P"
  elsif s=="P"
    puts "P"+"S"
  elsif s=="S"
    puts "S"+"R"
  end
end
ans=n

for i in (1..n-1) do
  if s[i]==s[i-1]
    ans-=1
  end
  puts ans
end
# SPRPSR   RRRR P  PRPRPSSRSPRSS
