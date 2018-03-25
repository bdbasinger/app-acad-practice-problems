# Write a function lucky_sevens?(numbers),
# which takes in an array of integers and returns true
# if any three consecutive elements sum to 7.



# Correct
def lucky_sevens?(arr)
  i = 0
  while i < arr.length - 2
    if arr[i] + arr[i + 1] + arr[i + 2] == 7
      return true
    end
    i += 1
  end
  return false
end


puts lucky_sevens?([1,5,1,0]) == true # => 1 + 5 + 1 == 7
puts lucky_sevens?([0,-2,1,8]) == true # => -2 + 1 + 8 == 7
puts lucky_sevens?([7,7,7,7]) == false
puts lucky_sevens?([3,4,3,4]) == false
# Make sure your code correctly checks for edge cases
# (i.e. the first and last elements of the array).




# Write a function oddball_sum(numbers),
# which takes in an array of integers and returns
# the sum of all the odd elements.

def oddball_sum(arr)
  sum = 0
  arr.each do |num|
    if num.odd?
      sum += num
    end
  end
  sum
end

puts oddball_sum([1,2,3,4,5]) == 9 # => 1 + 3 + 5 == 9
puts oddball_sum([0,6,4,4]) == 0
puts oddball_sum([1,2,1]) == 2



# Write a function disemvowel(string),
# which takes in a string, and returns
# that string with all the vowels removed.
# Treat “y” as a consonant.

def disemvowel(string)
  string.gsub(/[aeiou]/, '')
end

puts disemvowel("foobar") == "fbr"
puts disemvowel("ruby") == "rby"
puts disemvowel("aeiou") == ""
