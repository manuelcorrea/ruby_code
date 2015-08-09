def solution(roman)
 decoder(roman, 0)
end

def next_roman_sum(roman, start_from, sum)
  roman = roman[start_from..roman.length]
  if roman.length != 0
    sum = sum + decoder(roman, sum)
  end
  sum
end

def decoder(roman, sum = 0)

  start_from = 1
  if roman.start_with?('IV')
    sum = 4
    start_from = 2
  elsif roman.start_with?('IX')
    sum = 9
    start_from = 2
  elsif roman.start_with?('I')
    sum = 1
  elsif roman.start_with?('V')
    sum = 5
  elsif roman.start_with?('X')
    sum = 10
  elsif roman.start_with?('L')
    sum = 50
  elsif roman.start_with?('C')
    sum = 100
  elsif roman.start_with?('D')
    sum = 500
  elsif roman.start_with?('M')
    sum = 1000
  end

  next_roman_sum(roman, start_from, sum)
end
