N,s=gets.split.map(&:to_i)
dp=Array.new(N+1) {Array.new(s+1,false)}
dp[0][0]=true
a=[]
b=[]
a[0]=0
b[0]=0

for i in (1..N) do
  aa,bb=gets.split.map(&:to_i)
  a[i]=aa
  b[i]=bb
end
for i in (1..N) do
  for j in (1..s) do
    if j-a[i] >= 0 && dp[i-1][j-a[i]]
      dp[i][j]=true
    end
    if j-b[i] >=0 && dp[i-1][j-b[i]]
      dp[i][j]=true
    end
  end
end



if dp[N][s]
  puts "Yes"
  ans = ""
  (N).downto(1) do |i|
    if (s >= a[i] && dp[i-1][s-a[i]])
    ans = "H" + ans
      s -= a[i]
    else
      ans = "T" + ans
      s -= b[i]
    end
  end
  puts ans
else
  puts "No"
end
