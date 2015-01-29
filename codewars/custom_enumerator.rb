fib = Enumerator.new do |y|
  a = b = 1
  loop do
    y << a
    a, b = b, a + b
  end
end

puts fib.next

puts fib.next

puts fib.next

puts fib.next

puts fib.next

p fib.take_while {|n| n < 100} # => [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]