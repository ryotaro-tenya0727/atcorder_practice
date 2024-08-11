n,t,a=gets.split.map(&:to_i)
min=[t,a].min
max=[t,a].max
x=n-(t+a)

if min+x > max
  puts "No"
else
  puts "Yes"
end
