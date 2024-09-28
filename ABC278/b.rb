h,m=gets.split.map &:to_i


h.upto(h+23) do |i|
  value_h=i%24
  0.upto(59) do |j|
    value_m=j%60
    if value_h == h
      next if value_m < m
    end
    value_h = "0#{value_h}" if value_h.to_s.length == 1
    value_m = "0#{value_m}" if value_m.to_s.length == 1
    a,b=value_h.to_s.split('').map(&:to_i)
    c,d=value_m.to_s.split('').map(&:to_i)
    prev_b = b.dup
    prev_c = c.dup
    new_a_b = "#{a}#{prev_c}".to_i
    new_c_d = "#{prev_b}#{d}".to_i
    if new_a_b >=0 && new_a_b <= 23 && new_c_d >=0 && new_c_d <= 59
      puts "#{value_h} #{value_m}"
      exit
    end
  end
end
