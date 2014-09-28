
thevar = nil#"foobar" 
thevar ||= "baz"

puts thevar

def echo_all(*args)
  args.each  do |arg| 
    puts arg
  end
end


#echo_all("foo", "bar", 1, 2, 3)

words = %w{foo bar baz another word is here}

def avg_words_lame(words)
  total = 0
  words.each do |word|
    total += word.size
  end
  total/words.size
end

puts avg_words_lame words

def avg_cool(words)
  total = words.inject(0) { |result, word| word.size + result }
  total/words.size
end

puts avg_cool words 

numbers  = [1, 2, 3, 4]
p numbers.reverse
p numbers
p numbers.reverse!
p numbers

