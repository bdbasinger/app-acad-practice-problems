# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

# Correct
def most_common_letter(string)
  # Create a hash with a default value of 0 for each key
  count = Hash.new(0)
  # Split the string in an array of character
  arr = string.split('')
  # Iterate through each character in the hash incrementing each
  # value by the number of times each character occurs
  arr.each do |key, value|
    count[key] += 1
  end
  # Convert the hash to an array in order to sort it
  result = count.to_a
  # Sort the array by the number of times it occurs
  result = result.sort_by { |letter, number| number }
  # Return the last element in the array
  # Which is the [letter, number] that has occurred the most
  return result[-1]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.



puts('most_common_letter("abca") == ["a", 2]: ' +(most_common_letter('abca') == ['a', 2]).to_s)

puts('most_common_letter("abbab") == ["b", 3]: ' +(most_common_letter('abbab') == ['b', 3]).to_s)
