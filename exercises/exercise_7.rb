require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Hello user, please provide the name of a store: "
store_name = gets.strip
new_store = Store.create(name: "#{store_name}")
puts new_store.errors.full_messages