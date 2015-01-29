class HappyNumber

  def is_happy number
    sequence = []
    original_number = number
    while !sequence.include? original_number
      next_in_seq = number.to_s.chars.map { |c| c.to_i * c.to_i }.reduce(:+)
      sequence.push(next_in_seq)
      if next_in_seq == 1
        return true
      end
      number = next_in_seq
    end
    return false
  end

end