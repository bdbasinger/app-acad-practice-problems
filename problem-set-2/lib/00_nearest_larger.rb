# To test:
# bundle exec rspec spec/00_nearest_larger_spec.rb

# Write a function, `nearest_larger(arr, i)` which takes an array and an
# index.  The function should return another index, `j`: this should
# satisfy:
# arr[j] is the index being returned as the larger number
#
# (a) `arr[i] < arr[j]`, AND
# (b) there is no `j2` closer to `i` than `j` where `arr[i] < arr[j2]`.
#
# In case of ties (see example below), choose the earliest (left-most)
# of the two indices. If no number in `arr` is larger than `arr[i]`,
# return `nil`.
#
# Difficulty: 2/5

# Take an array and an index
# Return the index of the element that is the closest larger element
def nearest_larger(arr, idx)
  larger = []
  reference = arr
  arr = arr.sort
  larger = arr.select { |num| num > reference[idx] && num}
  larger = larger.uniq
  reference.each do |x|
    larger.each do |num| #larger numbers found
      if (x == num) && (larger.length >= 2)
        nums = reference.slice(reference.index(num)..idx) # (6,9,4)
        nums.reverse_each do |y|
          larger.each { |z| return reference.index(z) if y == z }
        end
      end

      if x == num
        return reference.index(num) # returns the index in the original array of the first larger number found
      end
    end
  end
  return nil
end
