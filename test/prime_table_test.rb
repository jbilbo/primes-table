require 'test/unit'
require 'primes_table'

class PrimeTableTest < Test::Unit::TestCase
  extend PrimesTable

  def test_return_only_prime_numbers
    assert !1.is_prime?
    assert 2.is_prime?
    assert 3.is_prime?
    assert !4.is_prime?
    assert 5.is_prime?
    assert 113.is_prime?
    assert !120.is_prime?
  end

  def test_return_next_prime_number
    assert_equal 2, 1.next_prime
    assert_equal 3, 2.next_prime
    assert_equal 5, 3.next_prime
    assert_equal 5, 4.next_prime
    assert_equal 103, 101.next_prime
    assert_equal 107, 103.next_prime
  end

  def test_return_array_of_prime_numbers
    list = PrimeTableTest.first_prime_numbers(1)
    assert_equal [2], list

    list = PrimeTableTest.first_prime_numbers(3)
    assert_equal [2, 3, 5], list

    list = PrimeTableTest.first_prime_numbers(10)
    assert_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29], list

    list = PrimeTableTest.first_prime_numbers(15)
    assert_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47], list
  end

  def test_returns_array_with_multiplication_table
    rows = PrimeTableTest.build_multiplication_table([1,2,3])
    assert_equal [['-',1,2,3], [1,1,2,3], [2,2,4,6], [3,3,6,9]], rows
  end

end
