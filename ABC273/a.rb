N=gets.to_i

def f(n)
  if n==0
    return 1
  end
  return sum=n*f(n-1)
end
puts f(N)
