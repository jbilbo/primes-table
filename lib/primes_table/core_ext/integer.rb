class Integer < Numeric

  #Returns true if number is prime (false otherwise) using the Trial division method.
  #Trial division method: This routine consists of dividing n by each integer m that is greater than 1 and less than
  # or equal to the square root of n. If the result of any of these divisions is an integer, then n is not a prime,
  # otherwise it is a prime.
  # This is OK for small numbers but not for bigger ones!
  def is_prime?
    return false if self <= 1
    2.upto(Math.sqrt(self).to_i) do |x|
      return false if self % x == 0
    end
    true
  end

  def next_prime
    n = self + 1
    n = n + 1 until n.is_prime?
    n
  end
end
