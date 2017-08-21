require 'bundler/setup'
Bundler.require
require_all 'app'

dig_inn = Restaurant.new("Dig Inn")
just_salad = Restaurant.new("Just Salad")
chopt = Restaurant.new("Chopt")


tim = Customer.new("Tim", "Fitz")
zach = Customer.new("Zach", "Kropf")
bee = Customer.new("Bee", "Dodds")

review1 = Review.new("Dig Inn", "Review 1", "Tim Fitz")
review2 = Review.new("Just Salad","Review 2", "Bee Dodds")
review3 = Review.new("Chopt","Review 3", "Tim Fitz")

binding.pry

"x"
