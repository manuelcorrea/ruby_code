
#single statements condition
x = true
puts "foobar"  if x

#unless
y = 200
unless y  < 100
  puts "heavy"
end

#loops
i = 0
while i < 10
  print i
  i+=1
end

puts 
i = 0 
until i >= 10
  print i
  i+=1
end 

puts
array = [1, 2, 3, 4 ]
for x in array 
  print x
end

puts 
array.each do |e|
  print e
end

puts
array.each do |e|
  if e == 3
    puts "found 3"
    break
  end
  puts "found #{e} keep looking"
end

#strings 
multi_line = %Q{
  the line 
  is too long
}
puts multi_line

#arrays
array << 5
print array 

puts
#hash
myhash = {}
myhash = {:name => 'foo' , :lastname => 'bar'}
puts myhash

class MyClass
  
  attr_accessor :age,:name
  
  def initialize(myvar)
    @thevar = myvar
    @thevar2 = 0
    @name = 'internalstr'
  end
  
  def hey(var2)
    @thevar2 = var2
  end
  
  def bye()
    puts @thevar +' - '+ @thevar2.to_s
  end
  
  def thevar=(value)
    @thevar = value
  end 
  
  def thevar
    @thevar 
  end
end

the_obj = MyClass.new("foobar")
the_obj.hey(12)
the_obj.bye()

the_obj.thevar = 'barbaz'
puts the_obj.thevar()

puts the_obj.name

module MyModule
  def printmd()
     "module"
  end
end

class SubClass <  MyClass
  include MyModule
  def initialize()
    super('subclass')
  end
end

objsub = SubClass.new()
objsub.hey(12)
puts objsub.bye()

puts objsub.printmd


thread1 = Thread.new do 
  sum = 0 
  1.upto(10) {|x| sum = sum + x}
  puts "the sum is #{sum}"
end

thread1.join

puts
#lambda

mylambda = lambda {puts "hello lambda"}
mylambda.call

mylambda = lambda{|x, y| x*y}
puts mylambda.call(2, 3)
