logan = Customer.new("Logan", "Emerson")

alan = Customer.new("Alan", "Alda")

jerry = Customer.new("Jerry", "Seinfeld")

jerry2 = Customer.new("Jerry", "Garcia")



olive_garden = Restaurant.new("The Olive Garden")

mortons = Restaurant.new("Morton's Steak House")

lolita = Restaurant.new("Lolita")

jerry.add_review(lolita, "Yes")

jerry.add_review(mortons, "Good")

lo = logan.add_review(olive_garden, "Stylin")

am = alan.add_review(mortons, "Good")

j2og = jerry2.add_review(olive_garden, "Stylin")
