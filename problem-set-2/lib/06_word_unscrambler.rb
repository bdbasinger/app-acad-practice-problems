# Write a function word_unscrambler that takes two inputs: a scrambled
# word and a dictionary of real words.  Your program must then output
# all words that our scrambled word can unscramble to.
#
# Hint: To see if a string `s1` is an anagram of `s2`, split both
# strings into arrays of letters. Sort the two arrays. If they are
# equal, then they are anagrams.


def word_unscrambler(str, words)
  result = []
  words.each do |word|
    result << word if /^(?:([#{str}])(?!.*\1)){#{word.length}}$/ =~ word
  end
  # Keep only the numbers that are the same length as the original string
  result.select! { |x| x.length == str.length }
  result
end

# var = "Value"
# str = "a test Value"
# p str.gsub( /#{var}/, 'foo' )   # => "a test foo"

word_unscrambler("cat", ["tic", "toc", "tac", "toe"])
word_unscrambler("turn", ["numb", "turn", "runt", "nurt"])

# ^          # matches the start of the string
# (?:        # open a non capturing group
# ([act])    # The characters that are allowed and a capturing group
# (?!.*\1)   # That character is matched only if it does not occur once more, Lookahead assertion
# ){3}       # Defines the amount of characters
# $
