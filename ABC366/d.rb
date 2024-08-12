N=gets.to_i
A=Array.new(N+1) {Array.new(N+1) { Array.new(N+1, 0) }}
for i in (1..N) do
  for j in (1..N) do
    A[i][j]=gets.split.map(&:to_i).unshift(-1)
  end
end

Q=gets.to_i
ans=[]
Q.times do |q|
  count=0
  lx,rx,ly,ry,lz,rz=gets.split.map(&:to_i)
  for i in (lx..rx) do
    for j in (ly..ry) do
      for k in (lz..rz) do
        count+=A[i][j][k]
      end
    end
  end
  ans << count
end
puts ans
