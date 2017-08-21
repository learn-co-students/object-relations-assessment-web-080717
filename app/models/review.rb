class Review

@@all = []

attr_accessor :restaurant, :customer

  def initialize(restaurant, content, customer)
    @restaurant = restaurant
    @content = content
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

  def content
    @content
  end


end
