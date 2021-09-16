#!/usr/bin/env ruby
# frozen_string_literal: true

def n_bottles_of_beer(number)
  return if number.negative?

  puts 'no more bottles of beer on the wall' if number.zero?
  puts "#{number} bottles of beer on the wall" if number != 0
  n_bottles_of_beer(number - 1)
end

n_bottles_of_beer(10)
