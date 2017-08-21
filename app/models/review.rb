require "pry"
class Review


  attr_accessor :customer, :restaurant

  def initialize(customer, content, restaurant)
    @customer = customer
    @content = content
    @restaurant = restaurant
    customer.reviews << self
  end

end
