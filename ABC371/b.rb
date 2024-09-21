N,M=gets.split.map(&:to_i)
h=Array.new(N+1) { Hash.new(0) }
M.times do
  a,b=gets.chomp.split(' ')
  a=a.to_i
  if b=='M' && h[a][b]==0
    puts 'Yes'
    h[a][b]+=1
  else
    puts "No"
    h[a][b]+=1
  end
end
