# PrimesTable

## Objective

Write a program that prints out a multiplication table of the first 10 prime numbers.
The program runs from the command line and print to screen one table. Across the top and down the left side
should be the 10 primes, and the body of the table should contain the product of multiplying these numbers.

- Consider Code complexity.
- Consider cases where we want more than ‘n’ primes (What if we just wanted to generate the 65,000th prime number?)
- Consider KISS and not over-engineering
- Consider re-usability
- DO NOT use a library method for Prime (write your own)
- Use Tests. TDD/BDD
- Write it in Ruby
- Impress us.

## Description

This solution takes advantage of the [Methadone](https://github.com/davetron5000/methadone) framework.
It has basic acceptance tests with [Cucumber](http://cukes.info) and unit tests with [Test::Unit](http://ruby-doc.org/stdlib-2.1.0/libdoc/test/unit/rdoc/Test/Unit.html). The project is ready to create a Gem,
for easier use of the binary ($ gem install primes_table && primes_table 10). But for the purpose of this exercise I don't consider it necessary.

A slightly optimized version of the Trial Division method has been used for the testing primality, valid only for small numbers but enough for the exercise.

## Usage

Clone this repo, then install all the dependencies (better with [rvm](http://rvm.io)):

    $ bundle install

Then you can generate the prime multiplication table with:

    $ bundle exec bin/primes_table 10

output:

    +----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+
    | -  | 2  | 3  | 5   | 7   | 11  | 13  | 17  | 19  | 23  | 29  |
    | 2  | 4  | 6  | 10  | 14  | 22  | 26  | 34  | 38  | 46  | 58  |
    | 3  | 6  | 9  | 15  | 21  | 33  | 39  | 51  | 57  | 69  | 87  |
    | 5  | 10 | 15 | 25  | 35  | 55  | 65  | 85  | 95  | 115 | 145 |
    | 7  | 14 | 21 | 35  | 49  | 77  | 91  | 119 | 133 | 161 | 203 |
    | 11 | 22 | 33 | 55  | 77  | 121 | 143 | 187 | 209 | 253 | 319 |
    | 13 | 26 | 39 | 65  | 91  | 143 | 169 | 221 | 247 | 299 | 377 |
    | 17 | 34 | 51 | 85  | 119 | 187 | 221 | 289 | 323 | 391 | 493 |
    | 19 | 38 | 57 | 95  | 133 | 209 | 247 | 323 | 361 | 437 | 551 |
    | 23 | 46 | 69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 | 667 |
    | 29 | 58 | 87 | 145 | 203 | 319 | 377 | 493 | 551 | 667 | 841 |
    +----+----+----+-----+-----+-----+-----+-----+-----+-----+-----+

Also there's an option for generate the nth prime number. For ex, if we want the 65,000nth prime number:

    $ bundle exec bin/primes_table --nth 65000

output:

    814279

## Tests

Acceptance tests:

    $ bundle exec rake features

Unit tests:

    $ bundle exec rake test
