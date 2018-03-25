# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

# (i, j)
# (start_index, length)

# Correct
def longest_palindrome(string)
  longest = ''
  i = 0
  while i < string.length
    j = 1
    while (i + j) <= string.length
      x = string.slice(i, j)
      if (x == x.reverse) && (x.length > longest.length)
        longest = x
      end
      j += 1
    end
    i += 1
  end
  longest
end
# Start with i as the start_index set to 0
# Iterate through the word testin


# These are tests to check that your code is working.
# After writing your solution, they should all print true.

puts longest_palindrome("bdehannahc")


puts(
  'longest_palindrome("abcbd") == "bcb": ' +
  (longest_palindrome('abcbd') == 'bcb').to_s
)
puts(
  'longest_palindrome("abba") == "abba": ' +
  (longest_palindrome('abba') == 'abba').to_s
)
puts(
  'longest_palindrome("abcbdeffe") == "effe": ' +
  (longest_palindrome('abcbdeffe') == 'effe').to_s
)
