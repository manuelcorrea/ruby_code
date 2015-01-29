module EasyProblem

  def self.generateHashtag(str)
    return false if str.empty? || str.length + 1 > 140
    return '#' + str.split.map(&:capitalize).join('')
  end

  def  self.int32_to_ip(int32)
    ('%0*b' % [32, int32]).scan(/.{8}/).map {|x| x.to_i(2)}.join('.')
  end

  def self.power(base, exponent)
    return nil if exponent < 0
    return 1 if exponent == 0
    Array.new(exponent){base}.reduce(:*)
  end

  def self.ipsBetween(start, ending)
    start.split('.').map{ |x| x.to_s(2)}.join('').to_i(2)
  end

end

puts EasyProblem.ipsBetween("10.0.0.0", "10.0.0.50")

puts EasyProblem.ipsBetween("10.0.0.0", "10.0.1.0")

puts EasyProblem.ipsBetween("20.0.0.10", "20.0.1.0")



