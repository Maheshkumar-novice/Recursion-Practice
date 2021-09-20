#!/usr/bin/env ruby
# frozen_string_literal: true

roman_mapping = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}

def integer_to_roman(roman_mapping, number, roman = '')
  return roman if number.zero?

  roman_mapping.each_key do |key|
    quotient, modulus = number.divmod(key)
    roman += roman_mapping[key] * quotient
    return integer_to_roman(roman_mapping, modulus, roman) if quotient.positive?
  end
end

p integer_to_roman(roman_mapping, 3000)
p integer_to_roman(roman_mapping, 2099)
p integer_to_roman(roman_mapping, 2)
p integer_to_roman(roman_mapping, 0)
