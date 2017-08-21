require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

person = Customer.new("Lauren", "Petersen")
person2 = Customer.new("Joan", "Didion")
applebees = Restaurant.new("Applebees")
pizza_hut = Restaurant.new("Pizza Hut")
review = person.add_review(applebees, "great")
review2 = person2.add_review(applebees, "terrible")


Pry.start
