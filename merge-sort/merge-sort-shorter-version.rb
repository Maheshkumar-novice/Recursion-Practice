#!/usr/bin/env ruby
# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength, Metrics/AbcSize

def merge_sort(array)
  return array if array.length == 1

  mid_index = array.length / 2
  end_index = array.length - 1

  left_half = array[0..mid_index - 1]
  right_half = array[mid_index..end_index]

  left_half_sorted = merge_sort(left_half)
  right_half_sorted = merge_sort(right_half)

  sorted = []
  until left_half_sorted.empty? || right_half_sorted.empty?
    sorted << (left_half_sorted.first < right_half_sorted.first ? left_half_sorted.shift : right_half_sorted.shift)
  end
  sorted + left_half_sorted + right_half_sorted
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def call_merge_sort
  array = rand(1..10).times.map { rand(200) }
  puts "Before Merge Sort: #{array}"
  puts "After Merge Sort:  #{merge_sort(array)}"
  puts
end

rand(1..10).times { call_merge_sort }
