def recursive_fib(n)
  n == 0 || n==1 ? n : recursive_fib(n-1) + recursive_fib(n-2)
end

def iterative_fib(n)
  table = [1,1]
  n.times do
    @fib_table = table[table.length-1] + (table[table.length - 2])
    table << @fib_table
  end

  return table.last
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("rec:") { recursive_fib(num) }
  x.report("itr:")  { iterative_fib(num)  }
end
