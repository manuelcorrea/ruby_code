def zero(operation = nil)
  return 0 if operation.nil?
  expresion = operation
  expresion.call(0)
end

def one(operation = nil)
  return 1 if operation.nil?
  expresion = operation
  expresion.call(1)
end

def two(operation = nil)
  return 2 if operation.nil?
  expresion = operation
  expresion.call(2)
end

def three(operation = nil)
  return 3 if operation.nil?
  expresion = operation
  expresion.call(3)
end

def four(operation = nil)
  return 4 if operation.nil?
  expresion = operation
  expresion.call(4)
end

def five(operation = nil)
  return 5 if operation.nil?
  expresion = operation
  expresion.call(5)
end

def six(operation = nil)
  return 6 if operation.nil?
  expresion = operation
  expresion.call(6)
end

def seven(operation = nil)
  return 7 if operation.nil?
  expresion = operation
  expresion.call(7)
end

def eight(operation = nil)
  return 8 if operation.nil?
  expresion = operation
  expresion.call(8)
end

def nine(operation = nil)
  return 9 if operation.nil?
  expresion = operation
  expresion.call(9)
end

def plus(right)
  lambda { |left = 0| left + right }
end

def minus(right)
  lambda { |left = 0| left - right }
end

def times(right)
  lambda { |left = 0| left * right }
end

def divided_by(right)
  lambda { |left = 0| left.to_f / right }
end