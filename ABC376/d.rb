N, M = gets.split.map(&:to_i)
g = Array.new(N+10) { [] }
M.times do
  a, b = gets.split.map(&:to_i)
  g[a] << b
end

inf = 10**9
d = Array.new(N+10, inf)
q=[1]
d[1] = 0

while !q.empty?
  s=q.shift
  g[s].each do |t|
    if t == 1
      puts d[s]+1
      exit
    end

    if d[t] == inf
      d[t] = d[s]+1
      q << t
    end
  end
end

puts -1
