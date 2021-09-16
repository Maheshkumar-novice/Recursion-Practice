#!/usr/bin/env ruby
# frozen_string_literal: true

puts 'Iterative Solution'
rocks = 100.times.map { rand(1..3000) }
max_rock = 0

rocks.each do |rock|
  max_rock = rock if max_rock < rock
end

puts "Heaviest rock is: #{max_rock}"

# puts "Heaviest rock is: #{rocks.inject{ |max_rock, rock| max_rock > rock ? max_rock : rock}}"

puts 'Recursive Solution'
def rock_judger(rocks_array)
  if rocks_array.length <= 2
    a = rocks_array[0]
    b = rocks_array[-1]
  else
    a = rock_judger(rocks_array.slice!(0, rocks_array.length / 2))
    b = rock_judger(rocks_array)
  end

  a > b ? a : b
end

puts "Heaviest rock is: #{rock_judger(rocks)}"

# def rock_judger(rock_array)
#   count = rock_array.length
#   a,b = count <=2 ? [rock_array[0], rock_array[-1]] : [rock_judger(rock_array.pop(count/2)), rock_judger(rock_array)]
#   a > b ? a : b
# end
