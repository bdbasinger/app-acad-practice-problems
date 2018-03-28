# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.

# Correct
def no_repeats(year_start, year_end)
  result = []
  arr = (year_start..year_end).to_a
  arr.each do |x|
    if no_repeat?(x)
      result << no_repeat?(x)
    end

  end
  result = result.map { |x| x.to_i }
end

def no_repeat?(year)
  year = year.to_s.split('')
  unique = year.uniq
  if year.length == unique.length # If there is no duplicate found
    return year.join('')
  else
    return false
  end

end
