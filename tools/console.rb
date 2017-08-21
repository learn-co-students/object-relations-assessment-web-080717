require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# tc1= Customer.new("Jon", "Doe")
# tc2= Customer.new("Jon2", "Doe2")
# tc3= Customer.new("Jon3", "Doe3")
# tc4= Customer.new("Jon4", "Doe4")
#
# tr1= Restaurant.new("Restaurant1")
# tr2= Restaurant.new("Restaurant2")
# tr3= Restaurant.new("Restaurant3")
# tr4= Restaurant.new("Restaurant2")
#
# trev = tc1.add_review(tr1,"Meh")
# trev2 = tc1.add_review(tr2,"Meh2")
# trev3 = tc2.add_review(tr3,"Meh3")
# trev4 = tc3.add_review(tr2,"Meh4")




Pry.start
