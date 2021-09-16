#!/usr/bin/env ruby
# frozen_string_literal: true

def sum_range_iterative(upto)
  sum = (1..upto).inject do |accumulator, value|
    accumulator += value
    accumulator
  end
  puts "Sum of Interval 1 to #{upto} using Iteration is: #{sum}"
end

def sum_range_recursive(upto, total = 0)
  if upto <= 0
    total
  else
    sum_range_recursive(upto - 1, total + upto)
  end
end

sum_range_iterative(10_000)
puts "Sum of Interval 1 to 10000 using Recursion is: #{sum_range_recursive(10_000)}"
