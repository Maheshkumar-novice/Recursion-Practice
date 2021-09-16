#!/usr/bin/env ruby
# frozen_string_literal: true

# my_try
puts 'My Solution: '
def my_palindrome?(string, index1 = 0, index2 = string.size - 1)
  return true if string.length == 1 || string.length.zero?

  if string[index1] == string[index2] && index1 <= index2
    my_palindrome?(string, index1 + 1, index2 - 1)
  elsif string[index1] != string[index2]
    false
  elsif index1 > index2
    true
  end
end

strings = ['appa', 'apea', 'malayam', 'malayalam', 'saippuakivikauppias', 'frustration', 'taco cat',
           'red rum,sir, is murder', '', 'a']

strings.each do |string|
  clean_string = string.delete(' ,')
  puts "Is '#{string}' palindrome? : #{my_palindrome?(clean_string)}"
end

# Internet solution
# https://www.codequizzes.com/computer-science/beginner/recursion
puts "\nInternet Solution: "
def palindrome?(string)
  if string.length == 1 || string.length.zero?
    true
  elsif string[0] == string[-1]
    palindrome?(string[1..-2])
  else
    false
  end
end

strings.each do |string|
  clean_string = string.delete(' ,')
  puts "Is '#{string}' palindrome? : #{palindrome?(clean_string)}"
end
