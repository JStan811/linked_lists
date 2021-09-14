# frozen_string_literal: true

require_relative 'linked_list'
require_relative 'node'

my_list = LinkedLists::LinkedList.new

my_list.prepend(35)
my_list.prepend(40)
my_list.prepend(55)
my_list.prepend(15)
my_list.append(10)
my_list.append(20)

p my_list
puts my_list.at(3)
puts my_list.size
puts my_list.tail
my_list.pop
p my_list
puts my_list.size
puts my_list.tail
puts my_list.contains?(55)
puts my_list.contains?(41)
p my_list.find(10)
p my_list.find(40)
p my_list.find(14)
puts my_list.to_s

puts my_list.at(3)

my_list.insert_at(60, 3)
p my_list
puts my_list.to_s

puts my_list.at(3)

my_list.remove_at(4)
p my_list
puts my_list.to_s

puts my_list.at(4)
