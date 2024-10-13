# n=gets.to_i
# k=gets.split.map(&:to_i)
# ss=0
# k.each do |n|
#   ss+=n
# end
# ans = 10**12
# (1 << n).times do |i|
#   s=[]
#   for j in (0..n-1) do
#     if i[j] == 1
#       s<<k[j]
#     end
#   end
#   s_sum = s.sum
#   ans = [ans, [ss-s_sum, s_sum].max].min
# end

# puts ans

N = gets.to_i
K = gets.split.map(&:to_i)
S = K.sum
lim = S / 2
dp = {}; dp[0] = 0
K.each do |k|
  ndp = dp.dup
  dp.each do |x, _|
    next if x + k > lim
    ndp[x + k] = x + k
  end
  dp = ndp
end
puts S - dp.keys.max
