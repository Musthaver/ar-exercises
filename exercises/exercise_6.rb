require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60).errors.full_messages
Employee.create(first_name: "Robin", last_name: "Westhaver", hourly_rate: 40).errors.full_messages
@store1.employees.create(first_name: "Josh", last_name: "Harris", hourly_rate: 25).errors.full_messages
@store2.employees.create(first_name: "Gabriel", last_name: "Varadi", hourly_rate: 30).errors.full_messages
@store2.employees.create(first_name: "Rebecca", last_name: "Gold", hourly_rate: 50).errors.full_messages
@store2.employees.create(first_name: "Victor", last_name: "Huyn", hourly_rate: 80).errors.full_messages