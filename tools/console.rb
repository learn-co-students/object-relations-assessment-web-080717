require_relative '../config/environment.rb'
require "pry"

def reload
  load 'config/environment.rb'
end


mary = Customer.new("Mary","Snow")
lee = Customer.new("Lee","Smith")
mj = Customer.new("Mary","Jane")

pugsleys = Restaurant.new("Pugsleys")
paintedpin= Restaurant.new("Painted Pin")
ormsbys = Restaurant.new("Ormsbys")

mary.add_review(pugsleys,"best pizza in the boogie down")
mj.add_review(pugsleys,"sal is the man!")
lee.add_review(ormsbys,"aside from throw-back games and awesome bar, amazing food")
mj.add_review(paintedpin,"high quality food with some high quality bowling")


Pry.start
