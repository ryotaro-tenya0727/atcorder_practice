N,Q=gets.split.map(&:to_i)
S=gets.chomp
count=0
for i in (0..S.size-3) do
  if S[i..i+2] == 'ABC'
    count+=1
  end
end
ans = []
Q.times do
  x,c=gets.chomp.split
  prev = S[x.to_i-1].dup

  # 元々ABCだった場合
  if prev != c && (S[x.to_i-3..x.to_i-1] == 'ABC' || S[x.to_i-2..x.to_i] == 'ABC' || S[x.to_i-1..x.to_i+1] == 'ABC')
    count-=1
  end
  S[x.to_i-1] = c

  # 新しくABCになった場合
  if prev != c && (S[x.to_i-3..x.to_i-1] == 'ABC' || S[x.to_i-2..x.to_i] == 'ABC' || S[x.to_i-1..x.to_i+1] == 'ABC')
    count+=1
  end

  ans << count
end
puts ans
