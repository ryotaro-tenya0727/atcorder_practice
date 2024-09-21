
require "sorted_set"
require "pry"

H,W,rs,cs=gets.split.map(&:to_i)
N=gets.to_i
g1 = Array.new(H) { SortedSet.new }
g2 = Array.new(W) { SortedSet.new }

erase = ->(i, j) {
  g1[i].add(j)
  g2[j].add(i)
}

N.times do
  r,c=gets.split.map(&:to_i)
  erase.call(r-1,c-1)
end
Q=gets.to_i
Q.times do
  d,l=gets.chomp.split
  l=l.to_i
  if d=='L'
    binding.pry
    p = g1[rs].to_a.reverse.bsearch { |x| x <= cs }
    if !p.nil?
      rs = p-1
    else
      rs=0
    end
  end

  if d=='R'
    p = g1[rs].to_a.bsearch { |x| cs <= x }
    if !p.nil?
      rs = p-1
    else
      rs=H-1
    end
  end

  if d=='U'
    p = g2[cs].to_a.reverse.bsearch { |x| x <= rs }
    if !p.nil?
      cs = p-1
    else
      cs=0
    end
  end

  if d=='D'
    p = g2[cs].to_a.bsearch { |x| rs <= x }
    if !p.nil?
      cs = p-1
    else
      cs=0
    end
  end
  puts "#{rs+1} #{cs+1}"
end
