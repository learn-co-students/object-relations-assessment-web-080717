class Review
  attr_accessor :customer, :restaurant, :content
  ALL = []

  def initialize(customer:, restaurant:, content:)
    @customer = customer
    @restaurant = restaurant
    @content = content
    ALL << self
  end

  def self.all
    ALL
  end

end

# + Review.all
#   + returns all of the reviews
# + Review#customer
#   + returns the customer for that given review
# + Review#restaurant
#   + returns the restaurant for that given review
