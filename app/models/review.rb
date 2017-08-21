class Review

  attr_accessor :restaurant, :content, :customer

  ALL = []

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer
    ALL << self
  end

  def self.all
    ALL
  end

  def customer
    @customer
  end

  def restaurant
    @restaurant
  end

end
