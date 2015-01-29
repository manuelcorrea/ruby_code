class Mother
  def self.phone_kids
    descendants.select{|x| x.respond_to?(:phone)}.each do |child|
      child.phone
    end
  end

  def self.descendants
    ObjectSpace.each_object(Class).select { |klass| klass < self }
  end
end

class Foo < Mother
  def self.phone
    "Foo"
  end

end

class Bar < Mother
  def self.phone
    "Bar"
  end

end

class Baz < Mother
end

foo = Foo.new
bar = Bar.new
baz = Baz.new

Mother.phone_kids