#!/usr/bin/env ruby
# frozen_string_literal: true

def print_children_recursive(hash)
  return if hash[:children].count.zero?

  hash[:children].each do |child|
    puts child[:name]
    print_children_recursive(child)
  end
end

children_hash = {
  name: 'John',
  children: [
    {
      name: 'Jim',
      children: []
    },
    {
      name: 'Zoe',
      children: [
        { name: 'Kyle', children: [] },
        { name: 'Sophia', children: [] }
      ]
    }
  ]
}

print_children_recursive(children_hash)
