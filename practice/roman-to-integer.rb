#!/usr/bin/env ruby
# frozen_string_literal: true

require 'pry'
roman_mapping = {
  'M' => 1000,
  'CM' => 900,
  'D' => 500,
  'CD' => 400,
  'C' => 100,
  'XC' => 90,
  'L' => 50,
  'XL' => 40,
  'X' => 10,
  'IX' => 9,
  'V' => 5,
  'IV' => 4,
  'I' => 1
}

def roman_to_integer(roman_mapping, roman, number = 0)
  return number if roman.empty?

  roman_mapping.each_key do |key|
    next unless roman.start_with?(key)

    number += roman_mapping[key]
    roman = roman.slice(key.length, roman.length)
    return roman_to_integer(roman_mapping, roman, number)
  end
end

p roman_to_integer(roman_mapping, 'MMM')
p roman_to_integer(roman_mapping, 'MMXCIX')
p roman_to_integer(roman_mapping, 'II')
p roman_to_integer(roman_mapping, '')
