N=gets.to_i
A=gets.split.map(&:to_i).unshift(0)
Q=gets.to_i
reset_num=0
ans_hash=Hash.new { |hash, key| hash[key] = A[key]}
ans=[]
Q.times do
  a,b,c=gets.split.map &:to_i
  if c.nil?
    if a==1
      reset_num=b
      ans_hash = Hash.new(0)
    elsif a==3
      ans << reset_num+ans_hash[b]
    end
  elsif a==2
    ans_hash[b]+=c
  end
end
puts ans
