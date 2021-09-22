#!/usr/bin/env ruby
# frozen_string_literal: true

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
# https://projecteuler.net/problem=3

# just a try for recursion not 100% working.
def prime?(div)
  ((div / 2)).downto(2) do |number|
    return false if (div % number).zero?
  end
  true
end

def prime_factor?(number, div)
  return false unless (number % div).zero?

  prime?(div)
end

def largest_prime_factor(number, div = Math.sqrt(number).floor)
  return div if prime_factor?(number, div)

  largest_prime_factor(number, div - 1)
end

p largest_prime_factor(1_500_333_22)
