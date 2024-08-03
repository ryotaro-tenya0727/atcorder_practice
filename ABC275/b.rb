a,b,c,d,e,f=gets.split.map(&:to_i)
s=a*b*c
t=d*e*f
ans = s-t
puts ans % 998244353
