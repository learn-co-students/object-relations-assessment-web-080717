class Restaurant
  attr_accessor :name
  ALL = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    ALL
  end

  def self.find_by_name(name)
    self.all.detect {|restaurant| restaurant.name === name}
  end

  def reviews
    Review.all.select {|review| review.restaurant === self}
  end

  def customers
    self.reviews.map {|review| review.customer}.uniq
  end

end
