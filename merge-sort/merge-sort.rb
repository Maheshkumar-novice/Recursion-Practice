#!/usr/bin/env ruby
# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize

def merge(left_half, right_half)
  new_array = []
  left_index = 0
  right_index = 0
  left_max_index = left_half.length - 1
  right_max_index = right_half.length - 1

  while left_index <= left_max_index && right_index <= right_max_index
    if left_half[left_index] < right_half[right_index]
      new_array << left_half[left_index]
      left_index += 1
    else
      new_array << right_half[right_index]
      right_index += 1
    end
  end

  new_array += right_half[right_index..-1] if right_index <= right_max_index
  new_array += left_half[left_index..-1] if left_index <= left_max_index
  new_array
end

def merge_sort(array)
  return array if array.length == 1

  left_half = merge_sort(array[0, array.length / 2])
  right_half = merge_sort(array[(array.length / 2)..-1])
  merge(left_half, right_half)
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def call_merge_sort
  array = rand(1..10).times.map { rand(200) }
  puts "Before Merge Sort: #{array}"
  puts "After Merge Sort: #{merge_sort(array)}"
  puts
end

rand(1..10).times { call_merge_sort }
