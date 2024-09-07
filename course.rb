# q = Thread::Queue.new
# [*1..100].each {|n| q.push(n)}

# threads = [*1..5].map do |i|
#   Thread.new do
#     until q.empty?
#       n = q.pop
#       puts "square of #{n} is #{n**2} (thread #{i})\n"
#       sleep(rand(0.01..0.1))
#     end
#   end
# end

# threads.each(&:join)

def foo(n)
  puts n
  puts caller
end

def bar(n)
  foo(n)
end

bar(5)
