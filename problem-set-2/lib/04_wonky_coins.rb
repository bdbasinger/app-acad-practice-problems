# Catsylvanian money is a strange thing: they have a coin for every
# denomination (including zero!). A wonky change machine in
# Catsylvania takes any coin of value N and returns 3 new coins,
# valued at N/2, N/3 and N/4 (rounding down).
#
# Write a method `wonky_coins(n)` that returns the number of coins you
# are left with if you take all non-zero coins and keep feeding them
# back into the machine until you are left with only zero-value coins.
#
# Difficulty: 3/5

# Recursive method?

# Definitely recursion

# Correct
def wonky_coins(n)
  if n == 0
    return 1
  else
    return wonky_coins(n/2) + wonky_coins(n/3) + wonky_coins(n/4)
  end
end






# 6

# 6/2 6/3 6/4
# 3 2 1

# 3
# 3/2 3/3 3/4
# 1 1 0

# 2
# 2/2 2/3 2/4
# 1 0 0

# 1
# 1/2 1/3 1/4
# 0 0 0

# 5
