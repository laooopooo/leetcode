# Reverse digits of an integer.

# Example1: x = 123, return 321
# Example2: x = -123, return -321

# click to show spoilers.
# 
# Have you thought about this?
# Here are some good questions to ask before coding. Bonus points for you if you have already thought through this!
# 
# If the integer's last digit is 0, what should the output be? ie, cases such as 10, 100.
# 
# Did you notice that the reversed integer might overflow? Assume the input is a 32-bit integer, then the reverse of 1000000003 overflows. How should you handle such cases?
# 
# For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
# 
# Update (2014-11-10):
# Test cases had been added to test the overflow behavior.

# @param {Integer} x
# @return {Integer}
def reverse(x)

  negative = false
  if x < 0
    x = -x
    negative = true
  end

  maximum = negative ? 2 ** 31 : 2 ** 31 - 1

  result = 0

  i = 1
  while (x / i) != 0 do
    i *= 10
  end

  if i == 1
    return negative ? -x : x
  end

  i /= 10
  j = 1


  while i > 0 do
    new_digit = ((x / i) % 10)
    return 0 if maximum / j < new_digit
    return 0 if maximum - new_digit * j < result
    result += new_digit * j
    j *= 10
    i /= 10
  end

  negative ? -result : result
end
