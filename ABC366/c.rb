set=Set.new
h=Hash.new(0)
Q=gets.to_i
Q.times do
  n,x=gets.split.map(&:to_i)
  if n==1
    set.add(x)
    h[x]+=1
  elsif n==2
    h[x]-=1
    set.delete(x) if h[x]==0
  else
    puts set.size
  end
end
