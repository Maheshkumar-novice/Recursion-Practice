#!/usr/bin/env ruby
# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize

def merge(left_half, right_half, array)
  left_index = 0
  right_index = 0
  array_index = 0
  left_max_index = left_half.length - 1
  right_max_index = right_half.length - 1

  while left_index <= left_max_index && right_index <= right_max_index
    if left_half[left_index] < right_half[right_index]
      array[array_index] = left_half[left_index]
      left_index += 1
    else
      array[array_index] = right_half[right_index]
      right_index += 1
    end
    array_index += 1
  end

  while right_index <= right_max_index
    array[array_index] = right_half[right_index]
    right_index += 1
    array_index += 1
  end

  while left_index <= left_max_index
    array[array_index] = left_half[left_index]
    left_index += 1
    array_index += 1
  end
  array
end

def merge_sort(array)
  return if array.length == 1

  left_half = array[0, array.length / 2]
  right_half = array[(array.length / 2)..-1]

  merge_sort(left_half)
  merge_sort(right_half)
  merge(left_half, right_half, array)
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def call_merge_sort
  array = rand(1..10).times.map { rand(200) }
  puts "Before Merge Sort: #{array}"
  puts "After Merge Sort:  #{merge_sort(array)}"
  puts
end

rand(1..10).times { call_merge_sort }
