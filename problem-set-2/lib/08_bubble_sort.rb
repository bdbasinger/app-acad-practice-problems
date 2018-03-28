# Write a function `bubble_sort(arr)` which will sort an array of
# integers using the "bubble sort"
# methodology. (http://en.wikipedia.org/wiki/Bubble_sort)
#
# Difficulty: 3/5

# Correct
def bubble_sort(arr)
  i = 0
  j = 1
  count = 0
  if arr.empty?
    return arr
  end
  if arr.length == 1
    return arr
  end
  while i < arr.length - 1
    if arr[i] > arr[j]
      temp_j = arr[j]
      arr[j] = arr[i]
      arr[i] = temp_j
    end
    i += 1
    j += 1
    if (j == arr.length)
      count += 1
      i = 0
      j = 1
    end
    # Pretty much a break statement that stops an infinite loop
    if count == arr.length - 1
      return arr
    end
  end
end

print bubble_sort([7,6,5, 4, 3, 2, 1])
