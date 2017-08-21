require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


customer = Customer.new("John", "Smith")
customer_one = Customer.new("John", "Aryn")
restaurant = Restaurant.new("Katz Deli")
review = Review.new(customer, "good eats", restaurant)


binding.pry
""
