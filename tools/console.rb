require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

lisa = Customer.new("lisa","huf")
eric = Customer.new("eric", "huf")

mammas = Restaurant.new("Mammas")
ellies = Restaurant.new("Ellies")

Rev1 = Review.new("Review 1", "This place is great!")

Pry.start
