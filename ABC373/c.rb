N=gets.to_i
A=gets.split.map(&:to_i)
B=gets.split.map(&:to_i)
a = A.sort.reverse[0]
b = B.sort.reverse[0]
puts a+b
