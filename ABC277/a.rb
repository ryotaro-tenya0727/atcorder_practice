n,x=gets.split.map(&:to_i)
p=gets.split.map(&:to_i)
for i in (0..n-1)
  if p[i]==x
    puts i+1
    exit
  end
end
