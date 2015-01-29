class Array
  def even
    self.select { |x| x.kind_of?(Fixnum) && x%2 == 0}
  end

  def odd
    self.select { |x| x.kind_of?(Fixnum) && x%2 != 0}
  end

  def under(number)
    self.select { |x| x.kind_of?(Fixnum) && x<number}
  end

  def over(number)
    self.select { |x| x.kind_of?(Fixnum) && x>number}
  end

  def in_range(range)
    self.select { |x| x.kind_of?(Fixnum) && x>=range.begin && x<=range.end}
  end

end


p [1,2,3,4,5].even
p [1,2,3,4,5].odd
p [1,2,3,4,5].under(4)
p [1,2,3,4,5].over(4)
p [1,2,3,4,5].in_range(1..3)

p (1..100).to_a.even.in_range(18..30)
p ["a", 1, "b", 300, "x", "q", 63, 122, 181, "z", 0.83, 0.11].even