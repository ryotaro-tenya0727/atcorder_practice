n,x=gets.split.map(&:to_i)
dp=Array.new(n+1) {Array.new(x+1,false)}
dp[0][0]=true

for i in (1..n) do
  a,b=gets.split.map(&:to_i)
  for j in (1..x) do
    dp[i][j]=true if dp[i-1][j-a]
    dp[i][j]=true if dp[i-1][j-b]
  end
end

puts dp[n][x] ? "Yes" : "No"
