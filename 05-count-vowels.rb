# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
#
# Difficulty: easy.

# Correct
def count_vowels(string)
  count = 0
  string.each_char do |x|
    # Both methods below are correct
    count += 1 if x =~ /[aeiou]/
    #count += 1 if x.match(/[aeiou]/)
  end
  count
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.


puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
