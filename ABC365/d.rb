n=gets.to_i
s=gets.chomp.split("")
s.unshift("dummy")

dp=Array.new(n+1) {Array.new(3, 0)}

for i in (1..n) do
  if s[i]=="R"
    dp[i][2] = -1
    dp[i][0] = [dp[i-1][1],dp[i-1][2]].max
    dp[i][1] = [dp[i-1][0],dp[i-1][2]].max + 1
  end

  if s[i]=="P"
    dp[i][0] = -1
    dp[i][1] = [dp[i-1][0],dp[i-1][2]].max
    dp[i][2] = [dp[i-1][0],dp[i-1][1]].max + 1
  end

  if s[i]=="S"
    dp[i][1] = -1
    dp[i][0] = [dp[i-1][1],dp[i-1][2]].max + 1
    dp[i][2] = [dp[i-1][0],dp[i-1][1]].max
  end
end

puts dp[n].max
