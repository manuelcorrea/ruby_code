sum = 0
(1..999).each do |num|
  sum = sum + num if num%3==0 || num%5==0
end

#puts sum


fib = Hash.new {|h,n| h[n] = h[n-1] + h[n-2] }
fib
sum = 0
n = 1
while true
  ne = fib[n]
  if ne < 4000000
    sum = sum + ne if ne%2 == 0
    n = n + 1
  else
    break
  end

end

puts sum