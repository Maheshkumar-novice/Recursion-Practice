#!/usr/bin/env ruby
# frozen_string_literal: true

def collatz_iterative(number)
  steps_to_one = 0
  loop do
    print "#{number} "
    break if number <= 1

    steps_to_one += 1
    number = if number.even?
               number / 2
             else
               3 * number + 1
             end
  end
  steps_to_one
end

def collatz_recursive(number)
  print "#{number} "
  return 0 if number <= 1

  return 1 + collatz_recursive(number / 2) if number.even?
  return 1 + collatz_recursive(3 * number + 1) if number.odd?
end

random = rand(200)
puts 'Iterative: '
puts "\nTotal Steps to Reach 1: #{collatz_iterative(random)}\n\n"
puts 'Recursive: '
puts "\nTotal Steps to Reach 1: #{collatz_recursive(random)}"
puts
