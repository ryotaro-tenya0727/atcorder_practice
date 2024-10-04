n, q = gets.split.map(&:to_i)

hash = {}
1.upto(q) do
  t, a, b = gets.split.map(&:to_i)
  case t
  when 1
    hash[[a, b]] = true
  when 2
    hash[[a, b]] = false
  when 3
    if hash[[a, b]] && hash[[b,a]]
      puts 'Yes'
    else
      puts 'No'
    end
  end
end
