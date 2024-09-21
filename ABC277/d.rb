N,M=gets.split.map(&:to_i)
A=gets.split.map(&:to_i).sort

max=-1
count=0
mods = []
sub_numbers = []
decided_sub_numbers = []

for i in (0..2*N-1)
  j = i % N
  mod = A[j] % M
  if mods.any?
    m = (i-1) % N
    if mods[m] == mod || (mods[m]+1) % N == mod
      sub_numbers << A[j]
      count += 1
    else
      if count > max
        max = count
        decided_sub_numbers = sub_numbers.dup
      end
      sub_numbers = []
      count=0
    end
  end
  mods << mod
end
# puts decided_sub_numbers.inspect
# puts (A-decided_sub_numbers).sum
