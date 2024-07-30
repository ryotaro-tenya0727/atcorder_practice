require "benchmark"
n = 10**5
a = Array.new(n){ rand(n) }
b, c, d, e, f = a.dup, a.dup, a.dup, a.dup, a.dup
Benchmark.bm(11) do |r|
  x = r.report("sort    "){ a = a.sort{ |a, b| b <=> a }.reverse }
  y = r.report("sort_by    "){ a = a.sort_by{ |a, b| b <=> a }.reverse }
  # y = r.report("sort_by "){ b = b.sort_by{ |e| -e }  }
  # z = r.report("sort!   "){ c.sort!{ |a, b| b <=> a } }
  # w = r.report("sort_by!"){ d.sort_by!{ |e| -e }  }
  # s = r.report("sort.reverse"){ e.sort.reverse  }
  # p w.real / s.real
end
