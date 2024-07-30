H,W=gets.split.map(&:to_i)
si,sj=gets.split.map(&:to_i)
array=Array.new(H+1){Array.new(W+1,".")}

1.upto(H) do |i|
  c=gets.chomp.split("")
  array[i][1..W]=c
end
x=gets.chomp.split("")
x.each do |t|
  if t=="L"
    if sj >=2 && array[si][sj-1]=="."
      sj-=1
    end
  elsif t=="R"
    if sj <=W-1 && array[si][sj+1]=="."
      sj+=1
    end
  elsif t=="U"
    if si >=2 && array[si-1][sj]=="."
      si-=1
    end
  elsif t=="D"
    if si <=H-1 && array[si+1][sj]=="."
      si+=1
    end
  end
end

puts "#{si} #{sj}"
