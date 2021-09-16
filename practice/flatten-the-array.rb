#!/usr/bin/env ruby
# frozen_string_literal: true

def flatten(array, flattened_array = [])
  array.each do |element|
    if element.is_a?(Array)
      flatten(element, flattened_array)
    else
      flattened_array << element
    end
  end
  flattened_array
end

p flatten([[1, 2], [3, 4]])
p flatten([[1, [8, 9], [3, 4]]])
p flatten([[1, [8, 9, [1, [8, 9, [10, 11, [23, 33]]]], [3, 4]]]])
p([[1, [8, 9, [1, [8, 9, [10, 11, [23, 33]]]], [3, 4]]]].flatten)
