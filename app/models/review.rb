class Review
  attr_accessor :customer, :restaurant, :content
  @@all = []
  def initialize(restaurant, content, customer=nil)
    @restaurant = restaurant
    @content = content
    @customer = customer
    restaurant.add_review(self)
    @@all << self
  end

  def self.all
    @@all
  end
end
