N=gets.to_i
a=gets.split.map(&:to_i)
having = Array.new(N+2, false)
sold = 0

for i in (0..N-1) do
  if a[i] >= having.size
    sold+=1
  elsif having[a[i]]
    sold+=1
  else
    having[a[i]] = true
  end
end

l=1
r=N+1
while true
  while (having[l]) do l+=1 end
  while (r!=0 && !having[r]) do r-=1 end

  if sold >= 2
    sold-=2
    having[l] = true
  else
    if l>= r
      break
    end
    having[r] = false
    sold+=1
  end

end
puts l-1
