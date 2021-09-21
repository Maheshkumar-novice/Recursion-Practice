#!/usr/bin/env ruby
# frozen_string_literal: true

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
# https://projecteuler.net/problem=1

# rubocop:disable Naming/VariableNumber

def multiples_of_3_or_5(number, sum = 0)
  return sum if number <= 1

  sum += number if (number % 3).zero? || (number % 5).zero?
  multiples_of_3_or_5(number - 1, sum)
end

p multiples_of_3_or_5(999)
# rubocop:enable Naming/VariableNumber
