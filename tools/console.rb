require_relative '../config/environment.rb'
require_relative '../app/models/customer.rb'
require_relative '../app/models/restaurant.rb'
require_relative '../app/models/review.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

aaron = Customer.new("Aaron", "Judge")
tom = Customer.new("Tom", "Black")
smith = Customer.new("Smith", "Yellow")

pizza = Restaurant.new("Pizza Central")
chicken = Restaurant.new("KFC")

binding.pry

"k"
