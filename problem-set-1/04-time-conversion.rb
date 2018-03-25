# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.


# Correct
def time_conversion(minutes)
  mins = minutes % 60
  hours = minutes / 60
  if mins == 0
    return "#{hours.to_s}:00"
  end
  return "#{hours.to_s}:#{mins}"
end

# puts time_conversion(125) 2:5

# These are tests to check that your code is working. After writing
# your solution, they should all print true.



puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)
