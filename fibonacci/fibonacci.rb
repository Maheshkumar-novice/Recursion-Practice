#!/usr/bin/env ruby
# frozen_string_literal: true

def fibs(number)
  fibonacci_values = []
  0.upto(number - 1) do |value|
    next fibonacci_values << value if value < 2

    fibonacci_values << fibonacci_values[-1] + fibonacci_values[-2]
  end
  fibonacci_values
end

puts 'Fibonacci Iteration: '
p fibs(5)
p fibs(4)
p fibs(14)
p fibs(1)
p fibs(0)
puts

# def fibs_rec(number, fib = [0, 1])
#   number < 3 ? fib : fibs_rec(number - 1, fib << fib[-1] + fib[-2])
# end

def fibs_rec(number, fib = [0, 1])
  return [] if number <= 0
  return [0] if number == 1
  return fib if number == 2

  fibs_rec(number - 1, fib << fib[-1] + fib[-2])
end

puts 'Fibonacci Recursion: '
p fibs_rec(5)
p fibs_rec(4)
p fibs_rec(14)
p fibs_rec(1)
p fibs_rec(0)
