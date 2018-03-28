# Make sure the vowels are in order in each word
# if they aren't in order in a particular word,
# remove them from the array
#


# Correct
def ordered_vowel_words(str)
  result = []
  if str.include?(" ")
    str = str.split(' ')
    str.each do |word|
      if ordered_vowel_word?(word)
        result << word
      end
    end
    result = result.join(' ')
    return result
  end
  if ordered_vowel_word?(str)
    return str
  else
    str = ""
    return str
  end
end

# amends
def ordered_vowel_word?(word)
  arr = word.split('')
  ord = 0
  arr.each do |char|
    if char.match(/[aeiou]/)
      if char.ord > ord
        ord = char.ord
        #puts ord
      end
      if char.ord < ord
        return false
      end
    end
  end
  return true
end

# puts ordered_vowel_words("this is a test of the vowel ordering system")
# puts ordered_vowel_word?("complicated")
# puts ordered_vowel_word?("amends")

# puts ordered_vowel_words("amends")

# ordered_vowel_words("Here we go")

# a == 97
# e == 101
# i == 105
# o == 111
# u == 117
