n,m=gets.split.map(&:to_i)
d = []
#  ここまででO(N**2)
(-n - 10).upto(n + 10) do |a|
  # b=-10^3(より少し小さめ)~10^3(より少し大きめ)
  (-n- 10).upto(n+ 10) do |b|
    # a^2+b^2=Mならば
    # count+=1
    if a**2 + b**2 == m
      # (a, b)方向へ進める
      d << [a, b]
    end
  end
end

array = Array.new(n+1) {Array.new(n+1, -1)}
array[1][1] = 0
q=Queue.new
q.push([1,1])

while q.size > 0
  nowi,nowj=q.pop
  num=array[nowi][nowj]
  for di,dj in d
    if  (1<= nowi+di && nowi+di <= n) && (1<= nowj+dj && nowj+dj <= n)
      if array[nowi+di][nowj+dj]==-1
        array[nowi+di][nowj+dj] = num+1
        q.push([nowi+di, nowj+dj])
      end
    end
  end
end

for i in (1..n) do
  puts array[i][1..n].join(" ")
end
