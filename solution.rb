class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all 
  	@@all 
  end

  def self.find_by_name(name)
  	self.all.detect do |nom|
  		nom.full_name == name 
  	end
  end

  def self.find_all_by_first_name(prenom)
  	self.all.select do |name|
  		name.first_name == prenom 
  	end
  end

  def self.all_names 
  	self.all.collect do |people|
  		people.full_name 
  	end
  end

  def add_review(restaurant, content)
  	Review.new(self, restaurant, content)
  end

end


######################


class Review
 	attr_accessor :customer, :restaurant, :content
 	
	@@all = []

	def initialize(customer, restaurant, content)
		@customer = customer
		@restaurant = restaurant 
		@content = content
		@@all << self 
	end

	def self.all
		@@all 
	end

	def customer
		@customer
	end

	def restaurant
		@restaurant
	end

end


######################


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