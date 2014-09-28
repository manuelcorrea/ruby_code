class Converter

  attr_accessor :symbol_hash

  def initialize
    init_symb_hash
  end

  def convert_to_roman(number)
    roman = ""
    @symbol_hash.reverse_each do |n, r|
      d = number / n
      roman = roman + r*d
      number = number % n
    end
    roman
  end

  def init_symb_hash
    @symbol_hash = {
        1 => "I",
        4 => "IV",
        5 => "V",
        9 => "IX",
        10 => "X",
        40 => "XL",
        50 => "L",
        90 => "XC",
        100 => "C"
    }
  end

end

converter = Converter.new
(1..100).each do |number|
  puts converter.convert_to_roman number
end