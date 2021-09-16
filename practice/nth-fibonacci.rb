#!/usr/bin/env ruby
# frozen_string_literal: true

def fibonacci_iterative(number)
  fibo1 = 0
  fibo2 = 1
  return fibo1 if number == 1
  return  fibo2 if number == 2

  (number - 2).times do
    fibo1, fibo2 = fibo2, (fibo1 + fibo2)
  end
  fibo2
end

def fibonacci_recursive(number)
  return 1 if number == 2
  return 0 if number == 1

  n1 = fibonacci_recursive(number - 1)
  n2 = fibonacci_recursive(number - 2)

  n1 + n2
end

def call_fibonacci
  10.times do
    random = rand(1..10)
    print "\nIterative: #{random} fibonacci number => "
    print fibonacci_iterative(random)
    print "\nRecursive: #{random} fibonacci number => "
    print fibonacci_recursive(random)
    puts
  end
  puts
end

call_fibonacci
