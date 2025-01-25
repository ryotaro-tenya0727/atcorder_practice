N=gets.to_i
A=gets.split.map(&:to_i).sort.reverse
B=gets.split.map(&:to_i).sort.reverse
d=0
idx=-1
for i in(0..N-2) do
  if A[i+d] > B[i]
    if(d==1)
      puts -1
      exit
    else
      d+=1
      idx=i
      if A[i+d] > B[i]
        puts -1
        exit
      end
    end
  end
end

puts A[idx]
