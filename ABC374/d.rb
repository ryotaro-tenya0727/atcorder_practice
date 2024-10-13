N,S,T=gets.split.map &:to_i
roots =[]
N.times do
  a,b,c,d = gets.split.map &:to_i
  roots << [a,b,c,d]
end


roots = roots.permutation(N).to_a

min = 10**12

def calculate_distance(start, goal)
  Math.sqrt((start[0] - goal[0])**2 + (start[1] - goal[1])**2)
end

times = []
roots.each_with_index do |root, j|
  (1 << N).times do |i|
    time_count=0
    now = [0,0]
    root.each_with_index do |r, k|
      if i[k] == 1
        time_count+=((calculate_distance(now, [r[0], r[1]]))/S).to_f
        now = [r[0], r[1]]
        time_count+=((calculate_distance(now, [r[2], r[3]]))/T).to_f
        now = [r[2], r[3]]
      elsif i[k] == 0
        time_count+=((calculate_distance(now, [r[2], r[3]]))/S).to_f
        now = [r[2], r[3]]
        time_count+=((calculate_distance(now, [r[0], r[1]]))/T).to_f
        now = [r[0], r[1]]
      end
    end
    min = [min, time_count].min
  end
end

puts min
