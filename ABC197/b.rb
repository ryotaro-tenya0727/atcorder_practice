H,W,X,Y=gets.split.map(&:to_i)
s=Array.new(H+1) {Array.new}
for i in (1..H) do
  ss= gets.chomp.split("")
  ss.unshift("#")
  s[i]=ss
end

count = 0
# 上を探す
if X > 1
  (X-1).downto(1) { |i|
    if s[i][Y]=="#"
      break
    end
    count+=1
  }
end

# 下を探す
if X < H
  (X+1).upto(H) { |i|
    if s[i][Y]=="#"
      break
    end
    count+=1
  }
end

# 左を探す
if Y > 1
  (Y-1).downto(1) { |i|
    if s[X][i]=="#"
      break
    end
    count+=1
  }
end

# 右を探す
if Y < W
  (Y+1).upto(W) { |i|
    if s[X][i]=="#"
      break
    end
    count+=1
  }
end
puts count+1
