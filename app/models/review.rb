class Review
   @@all = []
   attr_accessor :customer, :restaurant, :content

   def initialize(content, restaurant)
     customer.add_review(restaurant, content)
     @@all << self
   end

   def self.all
     @@all
   end
end
