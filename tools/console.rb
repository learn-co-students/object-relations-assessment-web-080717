require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end


kevin = Customer.new("Kevin", "Yonzon")
kevin2 = Customer.new("Kevin", "Nguyen")

kevin.add_review("Chipotle", "It's really alright")
chipotle_review = Review.all.first

jen = Customer.new("Jen", "Leyba")
jen.add_review("Chipotle", "BOGO!")
chipotle = Restaurant.all.first

binding.pry

"hi"
