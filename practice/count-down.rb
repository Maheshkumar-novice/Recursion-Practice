#!/usr/bin/env ruby
# frozen_string_literal: true

def count_down_terative(upto)
  upto.times do
    puts "CountDownIterative: #{upto}"
    upto -= 1
  end
end

def count_down_recursive(upto)
  return if upto <= 0

  puts "CountDownRecursive: #{upto}"
  count_down_recursive(upto - 1)
end

count_down_terative(10)
count_down_recursive(10)
