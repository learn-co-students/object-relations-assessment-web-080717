class Review
  ALL = []
  attr_accessor :content, :customer, :restaurant

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
    self.class.all << self
  end

  def self.all
    ALL
  end

end
