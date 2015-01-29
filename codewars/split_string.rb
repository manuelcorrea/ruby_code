# Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').
#
#                                                                                                                                                                                                                                  Examples:
#
#     solution('abc') # should return ['ab', 'c_']
# solution('abcdef') # should return ['ab', 'cd', 'ef']

def solution(str)
  if str.length % 2 !=0
    str = str + "_"
  end
  str.scan(/.{2}/)
end

p solution("abc")

p solution("abcdef")

p solution("a")
p solution("kata kata kata ")



def spinWords_(string)
  words = []
  string.split.each do |word|
    if word.length >=5
      word.reverse!
    end
    words.push(word)
  end
  words.join(" ")
end

def spinWords(string)
  string.gsub(/\w{5,}/, &:reverse)
end
puts spinWords( "Hey fellow warriors" )