def make_change(amount)
  change = {}
  coins  = { :H => 50, :Q => 25, :D => 10, :N => 5, :P => 1 }
  coins.each do |coin, value|
    if amount / value != 0
      change[coin] = amount/value
      amount = amount - change[coin]*value
    end
  end
  change
end


def change(cents)
  change = { 25 => 0, 10 => 0, 5 => 0, 1 => 0 }
  if cents > 0
    change.each do |coin, value|
      if cents / coin != 0
        change[coin] = cents/coin
        cents = cents - change[coin]*coin
      end
    end
  end

  change
end

puts change(31)
puts change(-1)