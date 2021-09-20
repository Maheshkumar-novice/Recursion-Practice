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

# Class Pair
class Pair
  attr_reader :first, :second

  def initialize(first, second)
    @first = first
    @second = second
  end
end

def u_version1(number)
  return Pair.new(1, 0) if number.zero?

  p1 = u_version1(number - 1)
  Pair.new(p1.first + p1.second, p1.first)
end

def u_version(number)
  puts "U Version 1: #{u_version1(number).first}"
end

u_version(0)
u_version(1)
u_version(2)
u_version(3)
u_version(4)
u_version(5)

def u_version3(number, current, prev)
  return current if number.zero?

  u_version3(number - 1, current + prev, current)
end

def u_version2(number)
  puts "U Version 3: #{u_version3(number, 1, 0)}"
end

u_version2(0)
u_version2(1)
u_version2(2)
u_version2(3)
u_version2(4)
u_version2(5)
