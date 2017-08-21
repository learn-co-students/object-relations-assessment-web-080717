class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.find_by_name(name)
  	self.all.detect do |nom|
  		nom.name == name 
  	end
  end

  def reviews	
  	Review.all.select do |review|
  		review.restaurant == self 
  	end
  end

  def customers
  	customer_array = []
  	restaurants = Review.all.select do |review| #gather array of reviews specific to that restaurant
  		review.restaurant == self 
  	end
  	customer_reviews = restaurants.collect do |restaurant| # collect all the customer names of each review and store them in array
  		restaurant.customer 
  	end 
  	customer_reviews
  end

end
