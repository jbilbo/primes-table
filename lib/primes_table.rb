require "primes_table/version"
require "primes_table/core_ext/integer"

module PrimesTable

  #Returns an array with the first +num+ prime numbers
  def first_prime_numbers(num)
    list = []
    prime = 2
    num.times do
      list << prime
      prime = prime.next_prime
    end
    list
  end

  #Returns an array with the rows of a multiplication table based on the +num_list+ list numbers.
  def build_multiplication_table(num_list)
    rows = []
    rows << ['-'] + num_list
    num_list.each do |n|
      rows << [n] + num_list.map{|p| n*p}
    end
    rows
  end

end
