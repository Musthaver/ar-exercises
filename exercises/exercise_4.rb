require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

class Store < ActiveRecord::Base

end

Store.create(name: "Surrey", mens_apparel: false, womens_apparel: true).errors.full_messages
Store.create(name: "Whistler", annual_revenue: 190000, mens_apparel: false, womens_apparel: false).errors.full_messages
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)
puts 
puts "This is the number of stores: #{Store.count}"
@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
    puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

@womens_stores = Store.where("annual_revenue < ? AND womens_apparel = ?", 1000000, true)

@womens_stores.each do |store|
    puts "Name: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end
