N=gets.to_i
H=gets.split.map(&:to_i)
sums=[0, 0]
for i in 2..N-1 do
  count=0
  for k in 1..i-1 do
    if H[k] < H[i]
      count+=1
    end
  end
  sums << count
end
ans << sums[N-1]
for i in (1..N-1) do
  if H[i] < H[i-1]
    ans << sums[i]
  end
end
# puts ans.join(" ")
