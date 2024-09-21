N=gets.to_i
ss=[]
N.times do
  s=gets.chomp
  ss << s
  l=s.length
  for i in (0..l-1)
    if i==0
      if !["H","D","C","S"].include?(s[i])
        puts "No"
        exit
      end
    end


    if i==1
      if !["A","2","3","4","5","6","7","8","9","T","J","Q","K"].include?(s[i])
        puts "No"
        exit
      end
    end
  end
end

for i in (1..ss.size-1) do
  for j in (0..i-1) do
    if ss[i]==ss[j]
      puts "No"
      exit
    end
  end
end

puts "Yes"
