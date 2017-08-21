class Review

  ALL = []

  attr_accessor :customer, :restaurant, :content

  def initialize(customer,restaurant,content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    ALL << self
  end

  def self.all
    ALL
  end

end
