class Review
  attr_accessor :customer, :restaurant, :content

  ALL = []

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    ALL << self
  end

  def self.all
    ALL
  end

end
