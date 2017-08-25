require 'bundler/setup'
Bundler.require
require_all 'app'

dig_inn = Restaurant.new("Dig Inn")
just_salad = Restaurant.new("Just Salad")
chopt = Restaurant.new("Chopt")


tim = Customer.new("Tim", "Fitz")
zach = Customer.new("Zach", "Kropf")
bee = Customer.new("Bee", "Dodds")

review1 = Review.new(dig_inn, "Review 1", tim)
review2 = Review.new(just_salad,"Review 2", bee)
review3 = Review.new(chopt,"Review 3", tim)

binding.pry

"x"
