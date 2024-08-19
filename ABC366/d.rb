N=gets.to_i
A=Array.new(N+1) {Array.new(N+1) { Array.new(N+1, 0) }}
sums=Array.new(N+1) {Array.new(N+1) { Array.new(N+1, 0) }}
for i in (1..N) do
  for j in (1..N) do
    A[i][j]=gets.split.map(&:to_i).unshift(0)
  end
end

for i in (1..N) do
  for j in (1..N) do
    for k in (1..N) do
      sums[i][j][k]=sums[i-1][j][k]+sums[i][j-1][k]+sums[i][j][k-1]-sums[i-1][j-1][k]-sums[i-1][j][k-1]-sums[i][j-1][k-1]+sums[i-1][j-1][k-1]+A[i][j][k]
    end
  end
end




Q=gets.to_i
ans=[]
Q.times do |q|
  lx,rx,ly,ry,lz,rz=gets.split.map(&:to_i)
  ans.push(sums[rx][ry][rz]-sums[lx-1][ry][rz]-sums[rx][ly-1][rz]-sums[rx][ry][lz-1]+sums[lx-1][ly-1][rz]+sums[lx-1][ry][lz-1]+sums[rx][ly-1][lz-1]-sums[lx-1][ly-1][lz-1])
end
puts ans
