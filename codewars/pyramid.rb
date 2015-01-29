
def pyramid(numbers)
  Array.new(numbers){ |i| Array.new(i+1){ 1 } }
end

p pyramid 3

p pyramid 10


p pyramid 0