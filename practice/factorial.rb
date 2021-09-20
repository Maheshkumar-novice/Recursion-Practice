#!/usr/bin/env ruby
# frozen_string_literal: true

def factorial_iterative(upto)
  factorial = (1..upto).inject do |accumulator, value|
    accumulator *= value
    accumulator
  end
  puts "Factorial Iterative from 1 to #{upto} is: #{factorial}"
end

def factorial_recursive(upto)
  return 1 if upto <= 1

  upto * factorial_recursive(upto - 1)
end

factorial_iterative(10)
puts "Factorial Recursive from 1 to 100 is: #{factorial_recursive(10)}"

def u_version(number, accumulator)
  number <= 0 ? accumulator : u_version(number - 1, number * accumulator)
end

puts "U Version: #{u_version(10, 1)}"
