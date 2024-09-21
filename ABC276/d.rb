N=gets.to_i
A=gets.split.map(&:to_i)
g=0
for i in (0..N-1)
  g=g.gcd(A[i])
end

ans=0
for i in (0..N-1)
  A[i] /= g
  while A[i] % 2 == 0
    A[i] /= 2
    ans += 1
  end
  while A[i] % 3 == 0
    A[i] /= 3
    ans += 1
  end
  if A[i] != 1
    puts -1
    exit
  end
end

puts ans
