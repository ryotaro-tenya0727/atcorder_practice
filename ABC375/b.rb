N=gets.to_i
count=0

def calculate_distance(start, goal)
  Math.sqrt((start[0] - goal[0])**2 + (start[1] - goal[1])**2)
end
now = [0,0]
N.times do |i|
  previous = now.dup
  now=gets.split.map(&:to_i)
  count+= calculate_distance(previous, now)
end

count+= calculate_distance(now, [0,0])
puts count
