class Student
  attr_reader :name
  attr_reader :fives
  attr_reader :tens
  attr_reader :twenties

  def initialize(name, fives, tens, twenties)
    @name = name
    @fives = fives
    @tens = tens
    @twenties = twenties
  end

  def total
    fives*5 + tens*10 + twenties*20
  end
end

def most_money(students)
  if students.length ==1
    return students[0].name
  end

  if students.uniq(&:total).length == 1
    'all'
  else
    students.max_by(&:total).name
  end
end


phil = Student.new("Phil", 2, 2, 1)
cam = Student.new("Cameron", 2, 2, 0)
geoff = Student.new("Geoff", 0, 3, 0)

puts most_money( [cam, geoff, phil] )

puts most_money([cam, geoff])

puts most_money( [geoff])